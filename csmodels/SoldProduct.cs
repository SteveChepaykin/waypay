using System;
using System.ComponentModel.DataAnnotations;

#nullable disable
namespace TurboCash.Data.Models
{
    public class SoldProduct
    {
        public int id { get; set; }

        [Required(ErrorMessage = "Credit ID is required")]
        public long credit_id { get; set; }

        [Required(ErrorMessage = "Name is required")]
        [StringLength(100, ErrorMessage = "Name cannot be longer than 100 characters")]
        public string name { get; set; }

        [Required(ErrorMessage = "Price is required")]
        [Range(0, double.MaxValue, ErrorMessage = "Price must be a non-negative value")]
        public Decimal price { get; set; }

        [Range(0, int.MaxValue, ErrorMessage = "Quantity must be a non-negative value")]
        public int quantity { get; set; }

        public Decimal add_amount { get; set; }

        public Decimal discount { get; set; }

        [Required(ErrorMessage = "Total is required")]
        [Range(0, double.MaxValue, ErrorMessage = "Total must be a non-negative value")]
        public Decimal total { get; set; }

        public long customer_id {  get; set; }
    }
}
