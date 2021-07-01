using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace MusicDBWebApp.Models
{
    public class Album
    {
        [Key]
        public int AlbumID { get; set; }

        [Required]
        [StringLength(200)]
        [Display(Name = "Album Name")]
        public string AlbumName { get; set; }

        [Required]
        [Display(Name = "Number of Songs")]
        public int Songs { get; set; }

        
        [Required]
        public int GenreID { get; set; }

        [ForeignKey("GenreID")]
        [InverseProperty("GenreAlbums")]
        public virtual Genre Genre { get; set; }

        [Required]
        public int ArtistID { get; set; }

        [ForeignKey("ArtistID")]
        [InverseProperty("ArtistAlbums")]
        public virtual Artist Artist { get; set; }

        [Required]
        [StringLength(20)]
        public string Extension { get; set; }

        [NotMapped]
        public PhotoData File { get; set; }

        public virtual ICollection<Review> Reviews { get; set; }
    }
}
