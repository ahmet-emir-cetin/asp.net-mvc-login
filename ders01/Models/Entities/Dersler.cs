using System;
using System.Collections.Generic;

namespace ders01.Models.Entities;

public partial class Dersler
{
    public int Id { get; set; }

    public string Title { get; set; } = null!;

    public int Kredi { get; set; }

    public int Note { get; set; }
}
