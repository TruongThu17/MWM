using AutoMapper;
using BusinessObject.DTO;
using BusinessObject.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.Extensions;
using Microsoft.AspNetCore.Mvc;
using Repository;

namespace MWMapi.Controllers
{
    [Route("api/customer")]
    [ApiController]
    public class CustomerController : ControllerBase
    {
        private ICustomerRepository repository = new CustomerRepository();
        private IMapper _mapper;

        public CustomerController(IMapper mapper)
        {
            _mapper = mapper;
        }


        [HttpGet]
        public ActionResult<IEnumerable<CustomerDTO>> Get()
        {
            IEnumerable<Customer> cus = repository.GetCustomers();
            IEnumerable<CustomerDTO> c = _mapper.Map<IEnumerable<CustomerDTO>>(cus);
            return Ok(c);
        }

        [HttpGet("{id}")]
        public ActionResult Get(int id)
        {
            if (id == null) return BadRequest();
            Customer cus = repository.FindCustomerById(id);
            if (cus == null) return NotFound();
            CustomerDTO c = _mapper.Map<CustomerDTO>(cus);
            return Ok(c);
        }

        // POST api/<SupplierController>
        [HttpPost]
        public ActionResult Post([FromBody] CustomerDTO customerDTO)
        {
            if (ModelState.IsValid)
            {
                Customer s = _mapper.Map<Customer>(customerDTO);
                repository.CreateCustomer(s);
                return Created(Request.GetDisplayUrl(), s);
            }
            return BadRequest(ModelState);
        }

        // PUT api/<SupplierController>/5
        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody] CustomerDTO customerDTO)
        {
            if (id != customerDTO.Id) return BadRequest();

            var s = repository.FindCustomerById(id);

            if (s == null) return NotFound();
            if (!ModelState.IsValid) return BadRequest(ModelState);
            Customer cus = _mapper.Map<Customer>(customerDTO);
            repository.UpdateCustomer(cus);
            return NoContent();
        }

        // DELETE api/<SupplierController>/5
        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            var s = repository.FindCustomerById(id);
            if (s == null) return NotFound();
            else
            {
                repository.DeleteCustomer(s);
                return NoContent();
            }
        }
    }
}
