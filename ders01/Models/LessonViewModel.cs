using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using ders01.Models.Entities;

namespace ders01.Models;

public class LessonViewModel
{
    [Required(ErrorMessage = "Lütfen boş geçmeyiniz!")]
    public string? Title { get; set; }

    [Required(ErrorMessage = "Lütfen boş geçmeyiniz!")]
    public int? Kredi { get; set; }

    [Required(ErrorMessage = "Lütfen boş geçmeyiniz!")]
    public int? Note { get; set; }
    public IEnumerable<Dersler>? Lessons { get; set; }
}
