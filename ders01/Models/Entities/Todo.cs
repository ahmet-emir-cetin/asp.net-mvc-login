using System;
using System.Collections.Generic;

namespace ders01.Models.Entities;

public partial class Todo
{
    public int Id { get; set; }

    public string? Title { get; set; }

    public bool? IsComplated { get; set; }
}
