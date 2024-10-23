using System;

namespace TurboCash.Data.Models
{
    public class UserStatistics
    {
        public long id { get; set; }
        public DateTime month { get; set; }
        public int credits_amount { get; set; }
        public long turnover {  get; set; }
    }
}