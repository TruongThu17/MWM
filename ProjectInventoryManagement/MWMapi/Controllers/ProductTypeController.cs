using AutoMapper;
using BusinessObject.DTO;
using BusinessObject.Models;
using Microsoft.AspNetCore.Http.Extensions;
using Microsoft.AspNetCore.Mvc;
using Repository;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace MWMapi.Controllers
{
    [Route("api/product-type")]
    [ApiController]
    public class ProductTypeController : ControllerBase
    {
        private IProductTypeRepository repository = new ProductTypeRepository();
        private IMapper _mapper;

        public ProductTypeController(IMapper mapper)
        {
            _mapper = mapper;
        }


        [HttpGet]
        public ActionResult<IEnumerable<ProductTypeDTO>> Get()
        {
            IEnumerable<ProductType> pt = repository.GetProductTypes();
            IEnumerable<ProductTypeDTO> ptDTO = _mapper.Map<IEnumerable<ProductTypeDTO>>(pt);
            return Ok(ptDTO);
        }

        [HttpGet("{id}")]
        public ActionResult Get(int id)
        {
            if (id == null) return BadRequest();
            ProductType pt = repository.FindProductTypeById(id);
            if (pt == null) return NotFound();
            ProductTypeDTO ptDTO = _mapper.Map<ProductTypeDTO>(pt);
            return Ok(ptDTO);
        }

        // POST api/<SupplierController>
        [HttpPost]
        public ActionResult Post([FromBody] ProductTypeDTO productTypeDTO)
        {
            if (ModelState.IsValid)
            {
                ProductType pt = _mapper.Map<ProductType>(productTypeDTO);
                repository.CreateProductType(pt);
                return Created(Request.GetDisplayUrl(), productTypeDTO);
            }
            return BadRequest(ModelState);
        }

        // PUT api/<SupplierController>/5
        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody] ProductTypeDTO productTypeDTO)
        {
            if (id != productTypeDTO.Id) return BadRequest();

            var s = repository.FindProductTypeById(id);

            if (s == null) return NotFound();
            if (!ModelState.IsValid) return BadRequest(ModelState);
            ProductType pt = _mapper.Map<ProductType>(productTypeDTO);
            repository.UpdateProductType(pt);
            return NoContent();
        }
    }
}
