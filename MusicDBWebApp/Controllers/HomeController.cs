using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using MusicDBWebApp.Data;
using MusicDBWebApp.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace MusicDBWebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public HomeController(ApplicationDbContext context, UserManager<IdentityUser> userManager, ILogger<HomeController> logger)
        {
            _logger = logger;
            _context = context;
            _userManager = userManager;
        }

        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.Albums
                .Include(j => j.Artist)
                .Include(j => j.Genre);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> AllGenre()
        {
            var applicationDbContext = _context.Genres;
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> AllArtist()
        {
            var applicationDbContext = _context.Artists;
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> ViewAlbumByArtist(int? id)
        {
            var artist = await _context.Artists.FindAsync(id);
            ViewData["ArtistName"] = "None";
            ViewData["About"] = "None";
            if (artist != null)
            {
                ViewData["ArtistName"] = artist.ArtistName;
                ViewData["About"] = artist.About;
            }
            var applicationDbContext = _context.Albums
                .Include(j => j.Artist)
                .Include(j => j.Genre)
                .Where(m => m.ArtistID == id);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> ViewAlbumByGenre(int? id)
        {
            var genre = await _context.Genres.FindAsync(id);
            ViewData["GenreName"] = "None";
            if (genre != null)
            {
                ViewData["GenreName"] = genre.GenreName;
            }
            var applicationDbContext = _context.Albums
                .Include(j => j.Artist)
                .Include(j => j.Genre)
                .Where(m => m.GenreID == id);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> ViewDetails(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var album = await _context.Albums
                .Include(j => j.Artist)
                .Include(j => j.Genre)
                .Include(m => m.Reviews)
                .FirstOrDefaultAsync(m => m.AlbumID == id);
            if (album == null)
            {
                return NotFound();
            }

            return View(album);
        }

        [Authorize]
        public IActionResult ShareReview(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var album = _context.Albums
                .Include(j => j.Artist)
                .Include(j => j.Genre)
                .Include(m => m.Reviews)
                .FirstOrDefault(m => m.AlbumID == id);
            if (album == null)
            {
                return NotFound();
            }

            ViewData["AlbumID"] = album.AlbumID;
            ViewData["AlbumName"] = album.AlbumName;
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> ShareReview([Bind("ReviewID,ReviewText,Rating,AlbumID")] Review review)
        {
            ModelState.Remove("ReviewDate");
            ModelState.Remove("UserID");
            if (ModelState.IsValid)
            {
                review.UserID = _userManager.GetUserName(this.User);
                review.ReviewDate = DateTime.Now;
                _context.Add(review);
                await _context.SaveChangesAsync();
            }
            return RedirectToAction(nameof(MyReviews));
        }

        [Authorize]
        public async Task<IActionResult> MyReviews()
        {
            string userid = _userManager.GetUserName(this.User);
            var reviews = _context.Reviews
                .Include(m => m.Album)
                .Where(m => m.UserID == userid);
            return View(await reviews.OrderByDescending(m => m.ReviewID).ToListAsync());
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
