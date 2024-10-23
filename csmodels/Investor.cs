using System;
using System.ComponentModel.DataAnnotations;

namespace TurboCash.Data.Models
{
    public class Investor
    {
        public long id { get; set; }

        [Required(ErrorMessage = "Nickname is required")]
        [StringLength(50, ErrorMessage = "Nickname cannot be longer than 50 characters")]
        public string nickname { get; set; }

        [StringLength(100, ErrorMessage = "Name cannot be longer than 100 characters")]
        public string name { get; set; }

        [Required(ErrorMessage = "Phone number is required")]
        [Phone(ErrorMessage = "Invalid phone number")]
        public string phone_number { get; set; }

        [Required(ErrorMessage = "Email is required")]
        [EmailAddress(ErrorMessage = "Invalid email address")]
        public string email { get; set; }

        [Required(ErrorMessage = "Balance is required")]
        [Range(0, double.MaxValue, ErrorMessage = "Balance must be a non-negative value")]
        public decimal balance { get; set; }

        public DateTime reverse_date { get; set; }

        [Required(ErrorMessage = "Investor pie is required")]
        [Range(0, double.MaxValue, ErrorMessage = "Investor pie must be a non-negative value")]
        public decimal investor_pie { get; set; }

        public decimal turnover { get; set; }

        public decimal profitability { get; set; }

        public decimal potential_profitability { get; set; }

        public int left_months_before_profitability { get; set; }

        public bool is_compony { get; set; }

        [Required(ErrorMessage = "Investment date is required")]
        public DateTime investment_date { get; set; }

        [Range(0, double.MaxValue, ErrorMessage = "Investment amount must be a non-negative value")]
        public decimal investment_amount { get; set; }

        /// <summary>
        /// Type of payment for current investor.
        /// </summary>
        /// <remarks>
        /// <para>
        /// 0:
        /// Часть от месячного взноса.
        /// </para>
        /// <para>
        /// 1:
        /// Процент от месячного дохода, ежемесячно.
        /// </para>
        /// <para>
        /// 2:
        /// Процент от годового дохода, в конце срока.
        /// </para>
        /// </remarks>
        [Required]
        [Range(0, 2, ErrorMessage = "Payment type must be between -1 and 2")]
        public int payment_type { get; set; }
        
        public long customer_id { get; set; }
    }
}