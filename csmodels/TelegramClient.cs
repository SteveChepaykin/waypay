using System.ComponentModel.DataAnnotations.Schema;

namespace WayPay_Server.Data.Models
{
    [Table("client")]
    public class TelegramClient
    {
        public long id { get; set; }
        public string? full_name { get; set; }
        public DateTime start_date { get; set; }
        public DateTime end_date { get; set; }
        public int workplace { get; set; }
        public int order_number { get; set; }
        public string[]? keys { get; set; }
        public string? contact {  get; set; }
        public int days_left { get; set; }
        public int term {  get; set; }
        public int payment { get; set; }
        public string[]? machine_guid { get; set; }
    }
}