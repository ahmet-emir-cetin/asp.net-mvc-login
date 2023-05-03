using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using ders01.Models.Entities;

namespace ders01.Models;

public class TodoViewModel
{
    [Required(ErrorMessage="Lütfen boş geçmeyiniz!")]
    public string? Title { get; set; }
    public IEnumerable<Todo>? Todos { get; set; }
}
