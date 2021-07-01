using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace MusicDBWebApp.Models
{
    public class Review
    {
        [Key]
        public int ReviewID { get; set; }

        [Required]
        [Display(Name = "User ID")]
        public string UserID { get; set; }

        [Display(Name = "Review Date")]
        public DateTime ReviewDate { get; set; }

        [StringLength(2000)]
        [Display(Name = "Review Text")]
        public string ReviewText { get; set; }

        
        [Display(Name = "Rating")]
        public int Rating { get; set; }

        [Required]
        public int AlbumID { get; set; }

        [ForeignKey("AlbumID")]
        [InverseProperty("Reviews")]
        public virtual Album Album { get; set; }
    }
}
