using System.ComponentModel.DataAnnotations;

namespace WayPay_Server.Data.Models
{
    public class Credit
    {
        public long id { get; set; }

        [Required(ErrorMessage = "Credit name is required")]
        [StringLength(100, ErrorMessage = "Credit name cannot be longer than 100 characters")]
        public string name { get; set; } = "";

        [Required(ErrorMessage = "Date is required")]
        public DateTime data { get; set; }

        [StringLength(100, ErrorMessage = "Investor name cannot be longer than 100 characters")]
        public string? investor { get; set; }

        [Required(ErrorMessage = "Full name is required")]
        [StringLength(100, ErrorMessage = "Full name cannot be longer than 100 characters")]
        [RegularExpression(@"^[А-ЯЁ][а-яё]+(?:\s+[А-ЯЁ][а-яё]+){1,3}$", ErrorMessage = "Invalid full name format")]
        public string? client_full_name { get; set; }

        [StringLength(200, ErrorMessage = "Client address cannot be longer than 200 characters")]
        public string? client_adr { get; set; }

        [StringLength(14, ErrorMessage = "Document number cannot be longer than 14 characters")]
        [RegularExpression(@"^\d{4}\ \d{6}$", ErrorMessage = "Invalid document format")]
        public string? client_doc { get; set; }

        [Required]
        [Phone(ErrorMessage = "Client phone number must be in a valid format")]
        public string? client_phone { get; set; }

        public Decimal total_clean { get; set; }

        public Decimal disc_percent { get; set; }

        public Decimal add_percent { get; set; }

        public Decimal total { get; set; }

        [Range(0, double.MaxValue, ErrorMessage = "First payment must be non-negative")]
        public Decimal firstpayment { get; set; }

        public int term { get; set; }

        public decimal total_products { get; set; }

        [Range(1, 31, ErrorMessage = "Payment day must be between 1 and 31")]
        public int day_payment { get; set; }

        public bool is_active { get; set; }

        [Range(0, long.MaxValue, ErrorMessage = "Client ID must be a positive number")]
        public long client_id { get; set; }

        public long investor_id { get; set; }

        public long? guarantor_id { get; set; }

        public bool favourite { get; set; }

        public bool in_debt { get; set; }

        [Range(1, long.MaxValue, ErrorMessage = "User ID must be a positive number")]
        public long user_id { get; set; }

        [StringLength(500, ErrorMessage = "Debt comment cannot be longer than 500 characters")]
        public string? debt_comment { get; set; }

        [Range(1, long.MaxValue, ErrorMessage = "Customer ID must be a positive number")]

        public long customer_id { get; set; }
    }
}
