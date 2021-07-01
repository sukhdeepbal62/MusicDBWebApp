using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MusicDBWebApp.Models
{
    public class Genre
    {
        [Key]
        public int GenreID { get; set; }

        [Required]
        [StringLength(200)]
        [Display(Name = "Genre Name")]
        public string GenreName { get; set; }

        public virtual ICollection<Album> GenreAlbums { get; set; }
    }
}
