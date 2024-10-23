using System;
using System.ComponentModel.DataAnnotations;

#nullable disable
namespace TurboCash.Data.Models
{
    public class MainInfo
    {
        public long id { get; set; }

        [Required(ErrorMessage = "Name is required")]
        [StringLength(100, ErrorMessage = "Name cannot be longer than 100 characters")]
        public string name { get; set; }

        [StringLength(12, MinimumLength = 10, ErrorMessage = "INN must be between 10 and 12 characters")]
        public string inn { get; set; }

        [StringLength(50, ErrorMessage = "Document cannot be longer than 50 characters")]
        public string document { get; set; }

        [StringLength(50, ErrorMessage = "Phone cannot be longer than 50 characters")]
        public string phone { get; set; }

        [StringLength(50, ErrorMessage = "City cannot be longer than 50 characters")]
        public string city { get; set; }

        [StringLength(200, ErrorMessage = "Urid address cannot be longer than 200 characters")]
        public string urid_address { get; set; }

        [Required(ErrorMessage = "Office address is required")]
        [StringLength(200, ErrorMessage = "Office address cannot be longer than 200 characters")]
        public string office_address { get; set; }

        [Required(ErrorMessage = "Bank is required")]
        [StringLength(100, ErrorMessage = "Bank name cannot be longer than 100 characters")]
        public string bank { get; set; }

        [StringLength(100, ErrorMessage = "Chief name cannot be longer than 100 characters")]
        public string chief { get; set; }

        public Decimal balance { get; set; }

        public long customer_id { get; set; }
    }
}
