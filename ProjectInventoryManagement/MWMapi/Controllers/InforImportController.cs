using AutoMapper;
using BusinessObject.DTO;
using BusinessObject.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Repository;

namespace MWMapi.Controllers
{
    [Route("api/import-infor")]
    [ApiController]
    public class InforImportController : ControllerBase
    {
        private IInforImportRepository repository = new InforImportRepository();
        private IMapper _mapper;

        public InforImportController(IMapper mapper)
        {
            _mapper = mapper;
        }


        [HttpGet]
        public ActionResult<IEnumerable<InforImportDTO>> Get()
        {
            IEnumerable<InforImport> ipt = repository.GetInforImports();
            IEnumerable<InforImportDTO> ipDTO = _mapper.Map<IEnumerable<InforImportDTO>>(ipt);
            return Ok(ipDTO);
        }

        [HttpGet("{idImport}/{idProduct}")]
        public ActionResult Get(int idImport, int idProduct)
        {
            if (idProduct == null || idImport==null) return BadRequest();
            InforImport inforImport = repository.FindInforImportById(idImport, idProduct);
            if (inforImport == null) return NotFound();
            InforImportDTO ipDTO = _mapper.Map<InforImportDTO>(inforImport);
            return Ok(ipDTO);
        }

        [HttpGet("{nameProduct}")]
        public ActionResult GetByNameProduct(string nameProduct)
        {
            List<InforImport> list = repository.FindInforImportByNameProduct(nameProduct);
            if (list == null) return NotFound();
            InforImportDTO ipDTO = _mapper.Map<InforImportDTO>(list);
            return Ok(ipDTO);
        }
    }
}
