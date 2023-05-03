$(function() {
    $(".btn-close").click(function() {
        var btn = $(this);
        var id = btn.data("id");
        var action = btn.data("action");
        var url = "/" + action + "/" + id;


        $.ajax({

            type: "get",
            url: url,
            success: function(data) {
                btn.parent().remove();
            }
        })
    });
    $("li").click(function() {
        var btn = $(this);
        var id = btn.data("id");
        var action = btn.data("action");
        var url = "/" + action + "/" + id;


        $.ajax({

            type: "get",
            url: url,
            success: function(data) {
                if (data == "False") {
                    btn.attr("class", "list-group-item list-group-item-danger m-1 text-decoration-line-through");
                } else {
                    btn.attr("class", "list-group-item list-group-item-success m-1");
                }
            }
        })
    });
    $(".delete-lesson").click(function() {
        var btn = $(this);
        var id = btn.data("id");
        var action = btn.data("action");
        var url = "/" + action + "/" + id;


        $.ajax({

            type: "get",
            url: url,
            success: function(data) {
                btn.parent().parent().parent().remove();
            }
        })
    });
})