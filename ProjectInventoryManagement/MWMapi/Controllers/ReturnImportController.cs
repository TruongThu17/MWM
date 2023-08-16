using AutoMapper;
using BusinessObject.DTO;
using BusinessObject.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Repository;

namespace MWMapi.Controllers
{
    [Route("api/return-import")]
    [ApiController]
    public class ReturnImportController : ControllerBase
    {
        private IReturnImportRepository repository = new ReturnImportRepository();
        private IMapper _mapper;

        public ReturnImportController(IMapper mapper)
        {
            _mapper = mapper;
        }


        [HttpGet]
        public ActionResult<IEnumerable<ReturnImportDTO>> Get()
        {
            IEnumerable<ReturnImport> ipt = repository.GetReturnImports();
            IEnumerable<ReturnImportDTO> ipDTO = _mapper.Map<IEnumerable<ReturnImportDTO>>(ipt);
            return Ok(ipDTO);
        }

        [HttpGet("{id}")]
        public ActionResult Get(int id)
        {
            if (id == null) return BadRequest();
            ReturnImport returnImport = repository.FindReturnImportById(id);
            if (returnImport == null) return NotFound();
            ReturnImportDTO ipDTO = _mapper.Map<ReturnImportDTO>(returnImport);
            return Ok(ipDTO);
        }
    }
}
