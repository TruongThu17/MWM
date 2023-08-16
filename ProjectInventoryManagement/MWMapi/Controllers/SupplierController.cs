using AutoMapper;
using BusinessObject.DTO;
using BusinessObject.Models;
using Microsoft.AspNetCore.Http.Extensions;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Repository;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace MWMapi.Controllers
{
    [Route("api/supplier")]
    [ApiController]
    public class SupplierController : ControllerBase
    {
        private ISupplierRepository repository = new SupplierRepository();
        private IMapper _mapper;

        public SupplierController(IMapper mapper)
        {
            _mapper = mapper;
        }


        // GET: api/<SupplierController>
        [HttpGet]
        public ActionResult<IEnumerable<SupplierDTO>> Get()
        {
            IEnumerable<Supplier> suppliers = repository.GetSuppliers();
            IEnumerable<SupplierDTO> sups = _mapper.Map<IEnumerable<SupplierDTO>>(suppliers);
            return Ok(sups);
        }


        // GET api/<SupplierController>/5
        [HttpGet("{id}")]
        public ActionResult Get(int id)
        {
            if (id == null) return BadRequest();
            Supplier sup = repository.FindSupplierById(id);
            if (sup == null) return NotFound();
            SupplierDTO s = _mapper.Map<SupplierDTO>(sup);
            return Ok(s);
        }

        // POST api/<SupplierController>
        [HttpPost]
        public ActionResult Post([FromBody] SupplierDTO supDTO)
        {
            if (ModelState.IsValid)
            {
                Supplier s = _mapper.Map<Supplier>(supDTO);
                repository.CreateSupplier(s);
                return Created(Request.GetDisplayUrl(), s);
            }
            return BadRequest(ModelState);
        }

        // PUT api/<SupplierController>/5
        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody] SupplierDTO supDTO)
        {
            if(id!= supDTO.Id) return BadRequest();

            var s = repository.FindSupplierById(id);

            if (s == null) return NotFound();
            if (!ModelState.IsValid) return BadRequest(ModelState);
            Supplier sup = _mapper.Map<Supplier>(supDTO);
            repository.UpdateSupplier(sup);
            return NoContent();
        }

        // DELETE api/<SupplierController>/5
        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            var s = repository.FindSupplierById(id);
            if (s == null) return NotFound();
            else
            {
                repository.DeleteSupplier(s);
                return NoContent();
            }
        }
    }
}
