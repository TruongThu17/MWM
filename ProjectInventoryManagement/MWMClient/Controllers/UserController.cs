using BusinessObject.DTO;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace MWMClient.Controllers
{
    public class UserController : Controller
    {
        private readonly HttpClient client;

        public UserController()
        {
            client = new() { BaseAddress = new Uri("http://localhost:5000") };
        }
        public const int ITEMS_PER_PAGE = 10;
        [BindProperty(SupportsGet = true, Name = "c")]
        public int currentPage { get; set; }
        public int countPages { get; set; }

        public async Task<IActionResult> Index()
        {
            var res = await client.GetAsync("api/user");
            var content = await res.Content.ReadAsStringAsync();

            if (!res.IsSuccessStatusCode)
            {
                return BadRequest();
            }

            List<UserDTO> userDTOs = JsonConvert.DeserializeObject<List<UserDTO>>(content);

            int totalUsers = userDTOs.Count;
            countPages = (int)Math.Ceiling((double)totalUsers / ITEMS_PER_PAGE);

            if (currentPage < 1)
            {
                currentPage = 1;
            }
            if (currentPage > countPages)
            {
                currentPage = countPages;
            }

            var users = userDTOs
                .OrderBy(a => a.Username)
                .Skip((currentPage - 1) * ITEMS_PER_PAGE)
                .Take(ITEMS_PER_PAGE)
                .ToList();

            ViewBag.currentPage = currentPage;
            ViewBag.countPages = countPages;

            return View(users);
        }
    }
}
