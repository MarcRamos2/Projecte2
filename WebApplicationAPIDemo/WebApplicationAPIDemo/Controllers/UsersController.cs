﻿using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplicationAPIDemo.DAL.Service;
using WebApplicationAPIDemo.Entity;


namespace WebApplicationAPIDemo.Controllers
{
    [EnableCors]
    [Route("api/users")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        // GET: users
        [HttpGet]
        public List<User> Get()
        {
            UserService objUserService = new UserService();
            return objUserService.GetAll();
        }

        // GET users/5
        [HttpGet("{id}")]
        public User Get(int id)
        {
            UserService objUserService = new UserService();
            return objUserService.GetById(id);
        }

        // POST users
        [HttpPost]
        public User Post([FromBody] User user)
        {
            UserService objUserService = new UserService();
            return objUserService.Add(user);
        }

        // PUT users/5
        [HttpPut("{id}")]
        public int Put(int id, [FromBody] User user)
        {
            UserService objUserService = new UserService();
            return objUserService.Update(user);
        }

        // DELETE users/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
            UserService objUserService = new UserService();
            objUserService.Delete(id);
        }
    }
}
