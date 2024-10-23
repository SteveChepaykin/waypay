using System.ComponentModel.DataAnnotations;

namespace WayPay_Server.Data.Models
{
    public class DbAccount
    {
        public long id { get; set; }

        [Required(ErrorMessage = "Login is required")]
        [StringLength(100, ErrorMessage = "Login cannot be longer than 100 characters")]
        public string login { get; set; }

        [Required(ErrorMessage = "Login is required")]
        [StringLength(100, ErrorMessage = "Login cannot be longer than 100 characters")]
        public string password { get; set; }

        public string[]? machine_guids { get; set; }
    }
}