using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace MusicDBWebApp.Models
{
    public class Artist
    {
        [Key]
        public int ArtistID { get; set; }

        [Required]
        [StringLength(200)]
        [Display(Name = "Artist Name")]
        public string ArtistName { get; set; }

        [Required]
        [StringLength(2000)]
        [Display(Name = "About Artist")]
        public string About { get; set; }

        [Required]
        [StringLength(20)]
        public string Extension { get; set; }

        [NotMapped]
        public PhotoData File { get; set; }

        public virtual ICollection<Album> ArtistAlbums { get; set; }
    }
}
