using AutoMapper;
using BusinessObject.DTO;
using BusinessObject.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Repository;

namespace MWMapi.Controllers
{
    [Route("api")]
    [ApiController]
    public class BilledController : ControllerBase
    {
        private IBilledRepository repository = new BilledRepository();
        private IMapper _mapper;

        public BilledController(IMapper mapper)
        {
            _mapper = mapper;
        }


        [HttpGet("billed")]
        public ActionResult<IEnumerable<BilledDTO>> Get()
        {
            IEnumerable<Billed> bill = repository.GetBilleds();
            IEnumerable<BilledDTO> billDTO = _mapper.Map<IEnumerable<BilledDTO>>(bill);
            return Ok(billDTO);
        }
        [HttpGet("order")]
        public ActionResult<IEnumerable<BilledDTO>> GetOrder()
        {
            IEnumerable<Billed> bill = repository.GetOrders();
            IEnumerable<BilledDTO> billDTO = _mapper.Map<IEnumerable<BilledDTO>>(bill);
            return Ok(billDTO);
        }

        [HttpGet("bill/{id}")]
        public ActionResult Get(int id)
        {
            if (id == null) return BadRequest();
            Billed bill = repository.FindBilledById(id);
            if (bill == null) return NotFound();
            BilledDTO billDTO = _mapper.Map<BilledDTO>(bill);
            return Ok(billDTO);
        }
    }
}
