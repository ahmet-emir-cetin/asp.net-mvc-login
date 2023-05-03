using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using ders01.Models.Entities;

namespace ders01.Models;

public class UserViewModel
{
    [Required(ErrorMessage = "Lütfen boş geçmeyiniz!")]
    public string? username { get; set; }
    [Required(ErrorMessage = "Lütfen boş geçmeyiniz!")]
    public string? password { get; set; }
    public IEnumerable<User>? Users { get; set; }
}
