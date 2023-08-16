using AutoMapper;
using BusinessObject.DTO;
using BusinessObject.Models;
using Microsoft.AspNetCore.Http.Extensions;
using Microsoft.AspNetCore.Mvc;
using Repository;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace MWMapi.Controllers
{
    [Route("api/user")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private IUserRepository repository = new UserRepository();
        private IMapper _mapper;


        public UserController(IMapper mapper)
        {
            _mapper = mapper;
        }


        [HttpGet]
        public ActionResult<IEnumerable<UserDTO>> Get()
        {
            IEnumerable<User> user = repository.GetUsers();
            IEnumerable<UserDTO> userDTO = _mapper.Map<IEnumerable<UserDTO>>(user);
            return Ok(userDTO);
        }

        [HttpGet("{username}")]
        public ActionResult Get(string username)
        {
            if (username == null) return BadRequest();
            User user = repository.FindUserByUserName(username);
            if (user == null) return NotFound();
            UserDTO userDTO = _mapper.Map<UserDTO>(user);
            return Ok(userDTO);
        }
        [HttpPost]
        public ActionResult Post([FromBody] UserDTO userDTO)
        {
            if (ModelState.IsValid)
            {
                
                User user = _mapper.Map<User>(userDTO);
                user.Password = "123@123";
                repository.CreateUser(user);
                return Created(Request.GetDisplayUrl(), userDTO);
            }
            return BadRequest(ModelState);
        }

        [HttpPut("{username}")]
        public ActionResult Put(string username, [FromBody] UserDTO userDTO)
        {
            if (username != userDTO.Username) return BadRequest();

            var s = repository.FindUserByUserName(username);

            if (s == null) return NotFound();
            if (!ModelState.IsValid) return BadRequest(ModelState);
            User  us = _mapper.Map<User>(userDTO);
            us.Password = s.Password;
            repository.UpdateUser(us);
            return Ok(userDTO);
        }
    }
}
