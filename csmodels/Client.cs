using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using WayPay_Server.Tools.ValidationAttributes;

namespace WayPay_Server.Data.Models
{
    public class Client
    {
        public long id { get; set; }

        [Required(ErrorMessage = "Full name is required")]
        [StringLength(100, ErrorMessage = "Full name cannot be longer than 100 characters")]
        [RegularExpression(@"^[А-ЯЁ][а-яё]+(?:\s+[А-ЯЁ][а-яё]+){1,3}$", ErrorMessage = "Invalid full name format")]
        public string? full_name { get; set; }

        [StringLength(200, ErrorMessage = "Address cannot be longer than 200 characters")]
        public string? adr { get; set; }

        [Required]
        [StringLength(14, ErrorMessage = "Document number cannot be longer than 14 characters")]
        [RegularExpression(@"^\d{4}\ \d{6}$", ErrorMessage = "Invalid document format")]
        public string? doc { get; set; }

        [Required(ErrorMessage = "Phone number is required")]
        [Phone(ErrorMessage = "Invalid phone number")]
        public string? phone { get; set; }

        [Required(ErrorMessage = "Birthdate is required")]
        [AgeRange(18, 100, ErrorMessage = "Age must be between 18 and 100 years.")]
        public DateTime birthdate { get; set; }

        public byte[]? img { get; set; }

        [StringLength(100, ErrorMessage = "Work place cannot be longer than 100 characters")]
        public string? work_place { get; set; }

        [StringLength(100, ErrorMessage = "Birthplace cannot be longer than 100 characters")]
        public string? birthplace { get; set; }

        [StringLength(100, ErrorMessage = "Document issue place cannot be longer than 100 characters")]
        public string? doc_issue { get; set; }

        [DocumentIssueDate(ErrorMessage = "Document issue date cannot be in the future or older than 100 years.")]
        public DateTime? doc_issue_date { get; set; }

        [Required(ErrorMessage = "Current address is requred")]
        [StringLength(200, ErrorMessage = "Current address cannot be longer than 200 characters")]
        public string? current_address { get; set; }

        [StringLength(500, ErrorMessage = "Work experience cannot be longer than 500 characters")]
        public string? work_expirience { get; set; }

        [StringLength(100, ErrorMessage = "Work title cannot be longer than 100 characters")]
        public string? work_title { get; set; }

        public bool blacklist { get; set; }

        [Required]
        public long customer_id { get; set; }

        [Phone(ErrorMessage = "Invalid phone number")]
        public string? second_phone { get; set; }
    }
}