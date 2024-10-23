using System;
using System.ComponentModel.DataAnnotations;
using WayPay_Server.Tools.ValidationAttributes;

#nullable disable
namespace TurboCash.Data.Models
{
    public class Guarantor
    {
        public long id { get; set; }

        [Required(ErrorMessage = "Full name is required.")]
        [StringLength(255, ErrorMessage = "Full name cannot be longer than 255 characters.")]
        [RegularExpression(@"^[А-ЯЁ][а-яё]+(?:\s+[А-ЯЁ][а-яё]+){1,3}$", ErrorMessage = "Invalid full name format")]
        public string full_name { get; set; }

        [AgeRange(18, 100, ErrorMessage = "Age must be between 18 and 100 years.")]
        public DateTime birthdate { get; set; }

        [StringLength(255, ErrorMessage = "Birthplace cannot be longer than 255 characters.")]
        public string birthplace { get; set; }

        [Required]
        [StringLength(14, ErrorMessage = "Document number cannot be longer than 14 characters")]
        [RegularExpression(@"^\d{4}\ \d{6}$", ErrorMessage = "Invalid document format")]
        public string doc_info { get; set; }

        [StringLength(255, ErrorMessage = "Document issue information cannot be longer than 255 characters.")]
        public string doc_issue { get; set; }

        public DateTime doc_issue_date { get; set; }

        [StringLength(255, ErrorMessage = "Registration address cannot be longer than 255 characters.")]
        public string reg_address { get; set; }

        [StringLength(255, ErrorMessage = "Actual address cannot be longer than 255 characters.")]
        public string actual_address { get; set; }

        [Required(ErrorMessage = "Phone number is required.")]
        [Phone(ErrorMessage = "Invalid phone number format.")]
        public string phone_number { get; set; }

        [StringLength(255, ErrorMessage = "Work place cannot be longer than 255 characters.")]
        public string work_place { get; set; }

        [StringLength(255, ErrorMessage = "Job title cannot be longer than 255 characters.")]
        public string job_title { get; set; }

        [StringLength(255, ErrorMessage = "Experience cannot be longer than 255 characters.")]
        public string experience { get; set; }

        public long customer_id { get; set; }
    }
}