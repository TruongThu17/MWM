using BusinessObject.DTO;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Net;
using System.Text;

namespace MWMClient.Controllers
{
    public class CustomerController : Controller
    {
        private readonly HttpClient client;

        public CustomerController()
        {
            client = new() { BaseAddress = new Uri("http://localhost:5000") };

        }
        public const int ITEMS_PER_PAGE = 10;
        [BindProperty(SupportsGet = true, Name = "c")]
        public int currentPage { get; set; }
        public int countPages { get; set; }

        public async Task<IActionResult> Index()
        {
            var res = await client.GetAsync("api/customer");
            var content = await res.Content.ReadAsStringAsync();

            if (!res.IsSuccessStatusCode)
            {
                return BadRequest();
            }

            List<CustomerDTO> customerDTOs = JsonConvert.DeserializeObject<List<CustomerDTO>>(content);

            int totalcustomer = customerDTOs.Count;
            countPages = (int)Math.Ceiling((double)totalcustomer / ITEMS_PER_PAGE);

            if (currentPage < 1)
            {
                currentPage = 1;
            }
            if (currentPage > countPages)
            {
                currentPage = countPages;
            }

            var cus = customerDTOs
                .OrderBy(a => a.Id)
                .Skip((currentPage - 1) * ITEMS_PER_PAGE)
                .Take(ITEMS_PER_PAGE)
                .ToList();

            ViewBag.currentPage = currentPage;
            ViewBag.countPages = countPages;

            return View(cus);
        }

        public async Task<ActionResult> EditAsync(int id)
        {
            if (id == null) return NotFound();

            var res = await client.GetAsync($"api/customer/{id}");
            if (res.StatusCode == HttpStatusCode.NotFound) return NotFound();
            var content = await res.EnsureSuccessStatusCode().Content.ReadAsStringAsync();
            var cus = JsonConvert.DeserializeObject<CustomerDTO>(content);
            if (cus == null) return NotFound();
            return View(cus);
        }
        public async Task<ActionResult> DetailsAsync(int id)
        {
            if (id == null) return NotFound();

            var res = await client.GetAsync($"api/customer/{id}");
            if (res.StatusCode == HttpStatusCode.NotFound) return NotFound();
            var content = await res.EnsureSuccessStatusCode().Content.ReadAsStringAsync();
            var cus = JsonConvert.DeserializeObject<CustomerDTO>(content);
            if (cus == null) return NotFound();
            return View(cus);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> EditAsync(int id, [Bind("Id,Name,Phone,Address,Note,Email,Dob")] CustomerDTO customerDTO)
        {
            if (id != customerDTO.Id) return NotFound();

            else
            {
                var body = new StringContent(JsonConvert.SerializeObject(customerDTO), Encoding.UTF8, "application/json");
                var response = await client.PutAsync($"api/customer/{customerDTO.Id}", body);
                if (response.IsSuccessStatusCode) return RedirectToAction(nameof(Index));
                else return StatusCode(500);
            }
        }
    }
}
