using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace HelloDocker.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class HelloDockerController : ControllerBase
    {
        private static readonly string[] Words = new[]
        {
            "Hello", "Docker",
        };

        private readonly ILogger<HelloDockerController> _logger;

        public HelloDockerController(ILogger<HelloDockerController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public IActionResult Get()
        {
            return Ok(Words);
        }
    }
}