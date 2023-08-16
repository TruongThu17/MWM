using AutoMapper;
using BusinessObject.DTO;
using BusinessObject.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.Extensions;
using Microsoft.AspNetCore.Mvc;
using Repository;

namespace MWMapi.Controllers
{
    [Route("api/product")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        private IProductRepository repository = new ProductRepository();
        private IMapper _mapper;

        public ProductController(IMapper mapper)
        {
            _mapper = mapper;
        }


        [HttpGet]
        public ActionResult<IEnumerable<ProductDTO>> Get()
        {
            IEnumerable<Product> pt = repository.GetProducts();
            IEnumerable<ProductDTO> pDTO = _mapper.Map<IEnumerable<ProductDTO>>(pt);
            return Ok(pDTO);
        }

        [HttpGet("{id}")]
        public ActionResult Get(int id)
        {
            if (id == null) return BadRequest();
            Product product = repository.FindProductById(id);
            if (product == null) return NotFound();
            ProductDTO pDTO = _mapper.Map<ProductDTO>(product);
            return Ok(pDTO);
        }
        [HttpPost]
        public ActionResult Post([FromBody] ProductDTO productDTO)
        {
            if (ModelState.IsValid)
            {
                Product p = _mapper.Map<Product>(productDTO);
                repository.CreateProduct(p);
                return Created(Request.GetDisplayUrl(), p);
            }
            return BadRequest(ModelState);
        }

        // PUT api/<SupplierController>/5
        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody] ProductDTO productDTO)
        {
            if (productDTO.Id==null)
            {
                Product product = repository.FindProductById(id);
                product.SalePrice = productDTO.SalePrice;
                repository.UpdateProduct(product);
                return NoContent();
            }
            if (id != productDTO.Id) return BadRequest();
            var s = repository.FindProductById(id);
            if (s == null) return NotFound();
            Product p = _mapper.Map<Product>(productDTO);
            repository.UpdateProduct(p);
            return NoContent();
        }
    }
}
