using System;
using System.ComponentModel.DataAnnotations;

#nullable disable
namespace TurboCash.Data.Models
{
    public class Product
    {
        public int id { get; set; }

        [Required(ErrorMessage = "Number is required")]
        [Range(0, int.MaxValue, ErrorMessage = "Number must be a non-negative value")]
        public int number { get; set; }

        [Required(ErrorMessage = "Name is required")]
        [StringLength(100, ErrorMessage = "Name cannot be longer than 100 characters")]
        public string name { get; set; }

        [Required(ErrorMessage = "Price is required")]
        [Range(0, double.MaxValue, ErrorMessage = "Price must be a non-negative value")]
        public Decimal price { get; set; }

        public Decimal add_amount { get; set; }

        public Decimal discount { get; set; }

        public Decimal total { get; set; }

        public long customer_id { get; set; }
    }
}