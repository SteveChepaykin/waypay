#nullable disable
using System.ComponentModel.DataAnnotations;

namespace TurboCash.Data.Models
{
    public class User
    {
        public long id { get; set; }

        [Required(ErrorMessage = "Login is required")]
        [StringLength(50, ErrorMessage = "Login cannot be longer than 50 characters")]
        public string login { get; set; }

        [Required(ErrorMessage = "Password is required")]
        [StringLength(100, MinimumLength = 8, ErrorMessage = "Password must be between 8 and 100 characters")]
        public string password { get; set; }

        [Required(ErrorMessage = "User full name is required")]
        [StringLength(100, ErrorMessage = "User full name cannot be longer than 100 characters")]
        public string user_full_name { get; set; }

        [StringLength(200, ErrorMessage = "Address cannot be longer than 200 characters")]
        public string address { get; set; }

        [Required(ErrorMessage = "Phone number is required")]
        [Phone(ErrorMessage = "Invalid phone number")]
        public string phone { get; set; }

        /// <summary>
        /// Массив булевых значений, представляющий набор разрешений пользователя.
        /// Каждый элемент массива соответствует определенному разрешению:
        /// </summary>
        /// <remarks>
        /// <list type="bullet">
        ///     <item>
        ///         <description>0 - Добавлять договор</description>
        ///     </item>
        ///     <item>
        ///         <description>1 - Изменять договор</description>
        ///     </item>
        ///     <item>
        ///         <description>2 - Удалять договор </description>
        ///     </item>
        ///     <item>
        ///         <description>3 - Данные компании </description>
        ///     </item>
        ///     <item>
        ///         <description>4 - Товары</description>
        ///     </item>
        ///     <item>
        ///         <description>5 - Чёрный список </description>
        ///     </item>
        ///     <item>
        ///         <description>6 - Журнал платежей </description>
        ///     </item>
        ///     <item>
        ///         <description>7 - Ожидаемые платежи</description>
        ///     </item>
        ///     <item>
        ///         <description>8 - Доходы</description>
        ///     </item>
        ///     <item>
        ///         <description>9 - Регистрация программы</description>
        ///     </item>
        /// </list>
        /// </remarks>
        [Required(ErrorMessage = "Access array is required")]
        [MinLength(10, ErrorMessage = "Access array must have at least 10 elements")]
        public bool[] access { get; set; }

        public bool is_admin { get; set; }

        public long customer_id { get; set; }
    }
}