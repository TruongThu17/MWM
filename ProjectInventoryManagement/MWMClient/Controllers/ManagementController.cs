using BusinessObject.DTO;
using BusinessObject.Models;
using DataAccess;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace MWMClient.Controllers
{
    public class ManagementController : Controller
    {
        private readonly HttpClient client;

        public ManagementController()
        {
            client = new() { BaseAddress = new Uri("http://localhost:5000") };
        }
        public const int ITEMS_PER_PAGE = 10;
        [BindProperty(SupportsGet = true, Name = "c")]
        public int currentPage { get; set; }
        public int countPages { get; set; }

        public async Task<IActionResult> ImportManagement()
        {
            var res = await client.GetAsync("api/import-product");
            var content = await res.Content.ReadAsStringAsync();

            if (!res.IsSuccessStatusCode)
            {
                return BadRequest();
            }

            List<ImportProductDTO> importProductDTOs = JsonConvert.DeserializeObject<List<ImportProductDTO>>(content);

            int totalImportProducts = importProductDTOs.Count;
            countPages = (int)Math.Ceiling((double)totalImportProducts / ITEMS_PER_PAGE);

            if (currentPage < 1)
            {
                currentPage = 1;
            }
            if (currentPage > countPages)
            {
                currentPage = countPages;
            }

            var ip = importProductDTOs
                .OrderBy(a => a.Id)
                .Skip((currentPage - 1) * ITEMS_PER_PAGE)
                .Take(ITEMS_PER_PAGE)
                .ToList();

            ViewBag.currentPage = currentPage;
            ViewBag.countPages = countPages;

            return View("ImportManagement", ip);
        }
        public async Task<IActionResult> ReturnImport()
        {
            var res = await client.GetAsync("api/return-import");
            var content = await res.Content.ReadAsStringAsync();

            if (!res.IsSuccessStatusCode)
            {
                return BadRequest();
            }

            List<ReturnImportDTO> returnImportDTO = JsonConvert.DeserializeObject<List<ReturnImportDTO>>(content);

            int totalreturnImportDTOs = returnImportDTO.Count;
            countPages = (int)Math.Ceiling((double)totalreturnImportDTOs / ITEMS_PER_PAGE);

            if (currentPage < 1)
            {
                currentPage = 1;
            }
            if (currentPage > countPages)
            {
                currentPage = countPages;
            }

            var ip = returnImportDTO
                .OrderBy(a => a.Id)
                .Skip((currentPage - 1) * ITEMS_PER_PAGE)
                .Take(ITEMS_PER_PAGE)
                .ToList();

            ViewBag.currentPage = currentPage;
            ViewBag.countPages = countPages;

            return View("ReturnImport", ip);
        }
        public async Task<IActionResult> Billed()
        {
            var res = await client.GetAsync("api/billed");
            var content = await res.Content.ReadAsStringAsync();

            if (!res.IsSuccessStatusCode)
            {
                return BadRequest();
            }

            List<BilledDTO> billedDTO = JsonConvert.DeserializeObject<List<BilledDTO>>(content);

            int totalbilledDTOs = billedDTO.Count;
            countPages = (int)Math.Ceiling((double)totalbilledDTOs / ITEMS_PER_PAGE);

            if (currentPage < 1)
            {
                currentPage = 1;
            }
            if (currentPage > countPages)
            {
                currentPage = countPages;
            }

            var ip = billedDTO
                .OrderBy(a => a.Id)
                .Skip((currentPage - 1) * ITEMS_PER_PAGE)
                .Take(ITEMS_PER_PAGE)
                .ToList();

            ViewBag.currentPage = currentPage;
            ViewBag.countPages = countPages;

            return View("Billed", ip);
        }
        public async Task<IActionResult> Order()
        {
            var res = await client.GetAsync("api/order");
            var content = await res.Content.ReadAsStringAsync();

            if (!res.IsSuccessStatusCode)
            {
                return BadRequest();
            }

            List<BilledDTO> orderDTO = JsonConvert.DeserializeObject<List<BilledDTO>>(content);

            int totalorderDTOs = orderDTO.Count;
            countPages = (int)Math.Ceiling((double)totalorderDTOs / ITEMS_PER_PAGE);

            if (currentPage < 1)
            {
                currentPage = 1;
            }
            if (currentPage > countPages)
            {
                currentPage = countPages;
            }

            var ip = orderDTO
                .OrderBy(a => a.Id)
                .Skip((currentPage - 1) * ITEMS_PER_PAGE)
                .Take(ITEMS_PER_PAGE)
                .ToList();

            ViewBag.currentPage = currentPage;
            ViewBag.countPages = countPages;

            return View("Order", ip);
        }
    }
}
