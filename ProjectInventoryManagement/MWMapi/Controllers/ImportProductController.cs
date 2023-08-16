using AutoMapper;
using BusinessObject.DTO;
using BusinessObject.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Repository;

namespace MWMapi.Controllers
{
    [Route("api/import-product")]
    [ApiController]
    public class ImportProductController : ControllerBase
    {
        private IImportProductRepository repository = new ImportProductRepository();
        private IMapper _mapper;

        public ImportProductController(IMapper mapper)
        {
            _mapper = mapper;
        }


        [HttpGet]
        public ActionResult<IEnumerable<ImportProductDTO>> Get()
        {
            IEnumerable<ImportProduct> ipt = repository.GetImportProducts();
            IEnumerable<ImportProductDTO> ipDTO = _mapper.Map<IEnumerable<ImportProductDTO>>(ipt);
            return Ok(ipDTO);
        }

        [HttpGet("{id}")]
        public ActionResult Get(int id)
        {
            if (id == null) return BadRequest();
            ImportProduct importProduct = repository.FindImportProductById(id);
            if (importProduct == null) return NotFound();
            ImportProductDTO ipDTO = _mapper.Map<ImportProductDTO>(importProduct);
            return Ok(ipDTO);
        }
    }
}
