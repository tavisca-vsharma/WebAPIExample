using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebAPIExample.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class HomeController : ControllerBase
    {
        public string Greeting(string str)
        {
            if(str.Equals("hello"))
            {
                return "hi I am vibhu";
               
            }
            else
            {
                return "invalid";
            }
        }
    }
}