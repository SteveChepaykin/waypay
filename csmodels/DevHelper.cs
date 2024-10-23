using System.ComponentModel.DataAnnotations;

namespace WayPay_Server.Data.Models
{
    public class DevHelper
    {
        [Key]
        public DateTime black_list_last_modified { get; set; }
        public DateTime version_date { get; set; }
    }
}
