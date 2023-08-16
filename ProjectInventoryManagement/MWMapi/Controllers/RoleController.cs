using AutoMapper;
using BusinessObject.DTO;
using BusinessObject.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.Extensions;
using Microsoft.AspNetCore.Mvc;
using Repository;

namespace MWMapi.Controllers
{
    [Route("api/role")]
    [ApiController]
    public class RoleController : ControllerBase
    {
        private IRoleRepository repository = new RoleRepository();
        private IMapper _mapper;

        public RoleController(IMapper mapper)
        {
            _mapper = mapper;
        }
        [HttpGet]
        public ActionResult<IEnumerable<RoleDTO>> Get()
        {
            IEnumerable<Role> r = repository.GetRoles();
            IEnumerable<RoleDTO> rDTO = _mapper.Map<IEnumerable<RoleDTO>>(r);
            return Ok(rDTO);
        }

        [HttpGet("{id}")]
        public ActionResult Get(int id)
        {
            if (id == null) return BadRequest();
            Role r = repository.FindRoleById(id);
            if (r == null) return NotFound();
            RoleDTO rDTO = _mapper.Map<RoleDTO>(r);
            return Ok(rDTO);
        }
    }
}
