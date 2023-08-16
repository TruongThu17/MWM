using BusinessObject.DTO;
using BusinessObject.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Net;
using System.Text;

namespace MWMClient.Controllers
{
    public class SupplierController : Controller
    {
        private readonly HttpClient client;

        public SupplierController()
        {
            client = new() { BaseAddress = new Uri("http://localhost:5000") };

        }
        public const int ITEMS_PER_PAGE = 10;
        [BindProperty(SupportsGet = true, Name = "s")]
        public int currentPage { get; set; }
        public int countPages { get; set; }

        public async Task<IActionResult> Index()
        {
            var res = await client.GetAsync("api/supplier");
            var content = await res.Content.ReadAsStringAsync();

            if (!res.IsSuccessStatusCode)
            {
                return BadRequest();
            }

            List<SupplierDTO> suppliers = JsonConvert.DeserializeObject<List<SupplierDTO>>(content);

            int totalSupplier = suppliers.Count;
            countPages = (int)Math.Ceiling((double)totalSupplier / ITEMS_PER_PAGE);

            if (currentPage < 1)
            {
                currentPage = 1;
            }
            if (currentPage > countPages)
            {
                currentPage = countPages;
            }

            var sup = suppliers
                .OrderBy(a => a.Id)
                .Skip((currentPage - 1) * ITEMS_PER_PAGE)
                .Take(ITEMS_PER_PAGE)
                .ToList();

            ViewBag.currentPage = currentPage;
            ViewBag.countPages = countPages;

            return View(sup);
        }

        public async Task<ActionResult> EditAsync(int id)
        {
            if (id == null) return NotFound();

            var res = await client.GetAsync($"api/supplier/{id}");
            if (res.StatusCode == HttpStatusCode.NotFound) return NotFound();
            var content = await res.EnsureSuccessStatusCode().Content.ReadAsStringAsync();
            var sup = JsonConvert.DeserializeObject<SupplierDTO>(content);
            if (sup == null) return NotFound();
            return View(sup);
        }
        public async Task<ActionResult> DetailsAsync(int id)
        {
            if (id == null) return NotFound();

            var res = await client.GetAsync($"api/supplier/{id}");
            if (res.StatusCode == HttpStatusCode.NotFound) return NotFound();
            var content = await res.EnsureSuccessStatusCode().Content.ReadAsStringAsync();
            var sup = JsonConvert.DeserializeObject<SupplierDTO>(content);
            if (sup == null) return NotFound();
            return View(sup);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> EditAsync(int id, [Bind("Id,Name,Phone,Address,Email")] SupplierDTO sup)
        {
            if (id != sup.Id) return NotFound();

            else
            {
                var body = new StringContent(JsonConvert.SerializeObject(sup), Encoding.UTF8, "application/json");
                var response = await client.PutAsync($"api/supplier/{sup.Id}", body);
                if (response.IsSuccessStatusCode) return RedirectToAction(nameof(Index));
                else return StatusCode(500);
            }
        }
    }
}
