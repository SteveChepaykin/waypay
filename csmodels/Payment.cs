using System;
using System.ComponentModel.DataAnnotations;

#nullable disable
namespace TurboCash.Data.Models
{
    public class Payment
    {
        public int id { get; set; }

        [Required(ErrorMessage = "Credit ID is required")]
        public long credit_id { get; set; }

        [Required(ErrorMessage ="Payment_amount is required")]
        [Range(0, double.MaxValue, ErrorMessage = "Payment amount must be a non-negative value")]
        public Decimal payment_amount { get; set; }

        public Decimal sum_percent { get; set; }

        [Required(ErrorMessage = "Date of payment is required")]
        public DateTime date_payment { get; set; }

        [Required(ErrorMessage = "User ID is required")]
        public long user_id { get; set; }

        [Required(ErrorMessage = "typ is required")]
        public bool typ { get; set; }

        [Required(ErrorMessage = "Number is required")]
        public long number { get; set; }

        public long customer_id { get; set; }
    }
}
