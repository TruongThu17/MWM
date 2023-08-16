using BusinessObject.DTO;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace MWMClient.Controllers
{
    public class CashierController : Controller
    {
        
        private readonly HttpClient client;

        public CashierController()
        {
            client = new() { BaseAddress = new Uri("http://localhost:5000") };

        }
        public async Task<IActionResult> BilledCashier()
        {
            BilledDTO dto = new BilledDTO();
           
            return View("BilledCashier",dto);
        }
    }
}
