using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MusicDBWebApp.Models
{
    public class PhotoData
    {    
        [Required]
        [Display(Name = "Choose Photo")]
        public IFormFile FormFile { get; set; }
        
    }
}
