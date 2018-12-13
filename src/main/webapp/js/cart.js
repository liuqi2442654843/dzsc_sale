$(function() {
    var region = $("#region");
    var address = $("#address");
    var number_this = $("#number_this");
    var name = $("#name_");
    var phone = $("#phone");
    $("#sub_setID").click(function() {
        var input_out = $(".input_style");
        for (var i = 0; i <= input_out.length; i++) {
            if ($(input_out[i]).val() == "") {
                $(input_out[i]).css("border", "1px solid red");

                return false;
            } else {
                $(input_out[i]).css("border", "1px solid #cccccc");
            }
        }
    });
    var span_momey = $(".span_momey");
    var b = 0;
    for (var i = 0; i < span_momey.length; i++) {
        b += parseFloat($(span_momey[i]).html());
    }
    var out_momey = $(".out_momey");
    out_momey.html(b);
    $(".shade_content").hide();
    $(".shade").hide();
    $('.nav_mini ul li').hover(function() {
        $(this).find('.two_nav').show(100);
    }, function() {
        $(this).find('.two_nav').hide(100);
    })
    $('.left_nav').hover(function() {
        $(this).find('.nav_mini').show(100);
    }, function() {
        $(this).find('.nav_mini').hide(100);
    })
    $('#jia').click(function() {
        $('input[name=num]').val(parseInt($('input[name=num]').val()) + 1);
    })
    $('#jian').click(function() {
        $('input[name=num]').val(parseInt($('input[name=num]').val()) - 1);
    })
    $('.Caddress .add_mi').click(function() {
        $(this).css('background', 'url("images/cart_img/mail_1.jpg") no-repeat').siblings('.add_mi').css('background', 'url("images/cart_img/mail.jpg") no-repeat')
    })
})
var x = Array();

function func(a, b) {
    x[b] = a.html();
    alert(x)
    a.css('border', '2px solid #f00').siblings('.min_mx').css('border', '2px solid #ccc');
}

function onclick_close() {
    var shade_content = $(".shade_content");
    var shade = $(".shade");
    if (confirm("确认关闭么！此操作不可恢复")) {
        shade_content.hide();
        shade.hide();
    }
}

function onclick_open() {
    $(".shade_content").show();
    $(".shade").show();
    var input_out = $(".input_style");
    for (var i = 0; i <= input_out.length; i++) {
        if ($(input_out[i]).val() != "") {
            $(input_out[i]).val("");
        }
    }
}

function onclick_remove(r) {
    if (confirm("确认删除么！此操作不可恢复")) {
        var out_momey = $(".out_momey");
        var input_val = $(r).parent().prev().children().eq(1).val();
        var span_html = $(r).parent().prev().prev().children().html();
        var out_add = parseFloat(input_val).toFixed(2) * parseFloat(span_html).toFixed(2);
        var reduce = parseFloat(out_momey.html()).toFixed(2)- parseFloat(out_add).toFixed(2);
        console.log(parseFloat(reduce).toFixed(2));
        out_momey.text(parseFloat(reduce).toFixed(2))
        $(r).parent().parent().remove();
    }
}

function onclick_btnAdd(a,sku_id) {
    var input_ = $(a).prev();
    var input_val = $(a).prev().val();
    var input_add = parseInt(input_val) + 1;
    input_.val(input_add);


    var shfxz = $("#shfxz").val();
    console.log(shfxz);
    var shfxz = $("#shfxz").val();
    var sku_jg = parseInt($(".span_momey").text()).toFixed(1);
    var tjshl = $(".momey_input").val( );
    on_chang(sku_id,shfxz,sku_jg,tjshl);
}

function onclick_reduce(b,sku_id) {
    var input_ = $(b).next();
    var input_val = $(b).next().val();

    if (input_val <= 1) {
        alert("商品个数不能小于1！")
    } else {
        var input_add = parseInt(input_val) - 1;
        input_.val(input_add);
    }
    var shfxz = $("#shfxz").val();
    var sku_jg = parseInt($(".span_momey").text()).toFixed(1);
    var tjshl = $(".momey_input").val();
    on_chang(sku_id,shfxz,sku_jg,tjshl);
}

function change_shfxz(checked,sku_id){
    var sku_jg = parseInt($(".span_momey").text()).toFixed(1);
    var tjshl = $(".momey_input").val();
    var shfxz = "0";
    if(checked){
        shfxz="1";
    }
    on_chang(sku_id,shfxz,sku_jg,tjshl);
}

function  on_chang(sku_id,shfxz,sku_jg,tjshl) {
    $.post("change_shfxz",{sku_id:sku_id,shfxz:shfxz,sku_jg:sku_jg,tjshl:tjshl},function(data){
        $("#cartListInner").html(data);
    });
}