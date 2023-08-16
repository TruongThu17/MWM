using BusinessObject.DTO;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Net;
using System.Text;

namespace MWMClient.Controllers
{
    public class ProductController : Controller
    {
        private readonly HttpClient client;

        public ProductController()
        {
            client = new() { BaseAddress = new Uri("http://localhost:5000") };
        }
        public const int ITEMS_PER_PAGE = 10;
        [BindProperty(SupportsGet = true, Name = "c")]
        public int currentPage { get; set; }
        public int countPages { get; set; }

        public async Task<IActionResult> Index()
        {
            var res = await client.GetAsync("api/product");
            var content = await res.Content.ReadAsStringAsync();

            if (!res.IsSuccessStatusCode)
            {
                return BadRequest();
            }

            List<ProductDTO> productDTOs = JsonConvert.DeserializeObject<List<ProductDTO>>(content);

            int totalProducts = productDTOs.Count;
            countPages = (int)Math.Ceiling((double)totalProducts / ITEMS_PER_PAGE);

            if (currentPage < 1)
            {
                currentPage = 1;
            }
            if (currentPage > countPages)
            {
                currentPage = countPages;
            }

            var cus = productDTOs 
                .OrderBy(a => a.Id)
                .Skip((currentPage - 1) * ITEMS_PER_PAGE)
                .Take(ITEMS_PER_PAGE)
                .ToList();

            ViewBag.currentPage = currentPage;
            ViewBag.countPages = countPages;

            return View(cus);
        }
        public async Task<IActionResult> SettingPrice()
        {
            var res = await client.GetAsync("api/product");
            var content = await res.Content.ReadAsStringAsync();

            if (!res.IsSuccessStatusCode)
            {
                return BadRequest();
            }

            List<ProductDTO> productDTOs = JsonConvert.DeserializeObject<List<ProductDTO>>(content);

            int totalProducts = productDTOs.Count;
            countPages = (int)Math.Ceiling((double)totalProducts / ITEMS_PER_PAGE);

            if (currentPage < 1)
            {
                currentPage = 1;
            }
            if (currentPage > countPages)
            {
                currentPage = countPages;
            }

            var cus = productDTOs
                .OrderBy(a => a.Id)
                .Skip((currentPage - 1) * ITEMS_PER_PAGE)
                .Take(ITEMS_PER_PAGE)
                .ToList();

            ViewBag.currentPage = currentPage;
            ViewBag.countPages = countPages;
            return View("SettingPrice", cus);
        }
        public async Task<IActionResult> InventoryProduct()
        {
            var res = await client.GetAsync("api/import-infor");
            var content = await res.Content.ReadAsStringAsync();

            if (!res.IsSuccessStatusCode)
            {
                return BadRequest();
            }

            List<InforImportDTO> inforImportDTOs = JsonConvert.DeserializeObject<List<InforImportDTO>>(content);

            int totalInforImports = inforImportDTOs.Count;
            countPages = (int)Math.Ceiling((double)totalInforImports / ITEMS_PER_PAGE);

            if (currentPage < 1)
            {
                currentPage = 1;
            }
            if (currentPage > countPages)
            {
                currentPage = countPages;
            }

            var cus = inforImportDTOs
                .OrderBy(a => a.DateExpiry)
                .Skip((currentPage - 1) * ITEMS_PER_PAGE)
                .Take(ITEMS_PER_PAGE)
                .ToList();

            ViewBag.currentPage = currentPage;
            ViewBag.countPages = countPages;
            return View("InventoryProduct", cus);
        }
        public async Task<ActionResult> EditAsync(int id)
        {
            if (id == null) return NotFound();

            var res = await client.GetAsync($"api/product/{id}");
            if (res.StatusCode == HttpStatusCode.NotFound) return NotFound();
            var content = await res.EnsureSuccessStatusCode().Content.ReadAsStringAsync();
            var cus = JsonConvert.DeserializeObject<ProductDTO>(content);
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
        public async Task<ActionResult> EditAsync(int id, [Bind("Id,Name,Phone,Address,Note,Email,Dob")] ProductDTO productDTO)
        {
            if (id != productDTO.Id) return NotFound();

            else
            {
                var body = new StringContent(JsonConvert.SerializeObject(productDTO), Encoding.UTF8, "application/json");
                var response = await client.PutAsync($"api/product/{productDTO.Id}", body);
                if (response.IsSuccessStatusCode) return RedirectToAction(nameof(Index));
                else return StatusCode(500);
            }
        }
    }
}
