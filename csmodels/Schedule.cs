using System;
using System.ComponentModel.DataAnnotations;

#nullable disable
namespace TurboCash.Data.Models
{
    public class Schedule
    {
        public int id { get; set; }

        [Required(ErrorMessage = "Credit ID is required")]
        public long credit_id { get; set; }

        [Range(0, double.MaxValue, ErrorMessage = "Rest must be a non-negative value")]
        public Decimal rest { get; set; }

        [Required(ErrorMessage = "Payment amount is Required")]
        [Range(0, double.MaxValue, ErrorMessage = "Payment amount must be a non-negative value")]
        public Decimal payment_amount { get; set; }

        [Range(0, double.MaxValue, ErrorMessage = "Sum percent must be a non-negative value")]
        public Decimal sum_percent { get; set; }

        [Range(0, double.MaxValue, ErrorMessage = "Sum total must be a non-negative value")]
        public Decimal sum_total { get; set; }

        [Required(ErrorMessage = "Date of payment is required")]
        public DateTime date_payment { get; set; }

        [StringLength(500, ErrorMessage = "Comment cannot be longer than 500 characters")]
        public string comment { get; set; }

        public long customer_id { get; set; }
    }
}
