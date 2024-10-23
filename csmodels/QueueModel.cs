using System.ComponentModel.DataAnnotations;

namespace TurboCash.Data.Models
{
    public class QueueModel
    {
        public long id { get; set; }

        [Required(ErrorMessage = "Client ID is required")]
        public long client_id { get; set; }

        [Required(ErrorMessage = "Sum is required")]
        [Range(0, double.MaxValue, ErrorMessage = "Sum must be a non-negative value")]
        public decimal sum { get; set; }

        [Required(ErrorMessage = "Queue number is required")]
        public long queue_number { get; set; }

        public long customer_id { get; set; }
    }
}
