using System;
using System.ComponentModel.DataAnnotations;

#nullable disable
namespace TurboCash.Data.Models
{
    public class Base
    {
        [Key]
        public int id { get; set; }

        [Range(1, 31, ErrorMessage = "Payment day must be between 1 and 31")]
        public int day_payment { get; set; }

        [Range(0, 100, ErrorMessage = "First payment percent must be between 0 and 100")]
        public Decimal first_payment_percent { get; set; }

        [Range(0, 100, ErrorMessage = "Allowance percent must be between 0 and 100")]
        public Decimal percent_allowance { get; set; }

        [Range(0, int.MaxValue, ErrorMessage = "Round must be a non-negative number")]
        public int round { get; set; }

        [Range(1, int.MaxValue, ErrorMessage = "Term must be a positive number")]
        public int term { get; set; }

        [Range(0, int.MaxValue, ErrorMessage = "Last credit must be a non-negative number")]
        public int last_credit { get; set; }

        public long customer_id { get; set; }
    }
}