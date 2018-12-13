//商品滚动
$(function(){
    $(".next a").click(function(){ nextscroll() });
    function nextscroll(){
        var vcon = $(".aui-content-box-list ");
        var offset = ($(".aui-content-box-list li").width())*-1;
        vcon.stop().animate({left:offset},"slow",function(){
            var firstItem = $(".aui-content-box-list ul li").first();
            vcon.find("ul").append(firstItem);
            $(this).css("left","0px");
            circle()
        });
    };

    function circle(){
        var currentItem = $(".aui-content-box-list ul li").first();
        var currentIndex = currentItem.attr("index");
        $(".circle li").removeClass("circle-cur");
        $(".circle li").eq(currentIndex).addClass("circle-cur");
    }


    $(".prev a").click(function(){
        var vcon = $(".aui-content-box-list ");
        var offset = ($(".aui-content-box-list li").width()*-1);
        var lastItem = $(".aui-content-box-list ul li").last();
        vcon.find("ul").prepend(lastItem);
        vcon.css("left",offset);
        vcon.animate({left:"0px"},"slow",function(){
            circle()
        })
    });
});

var intDiff = parseInt(600000);//倒计时总秒数量

function timer(intDiff){
    window.setInterval(function(){
        var day=0,
            hour=0,
            minute=0,
            second=0;//时间默认值
        if(intDiff > 0){
            day = Math.floor(intDiff / (60 * 60 * 24));
            hour = Math.floor(intDiff / (60 * 60)) - (day * 24);
            minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);
            second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
        }
        if (minute <= 9) minute = '0' + minute;
        if (second <= 9) second = '0' + second;
        $('#hour_show').html('<s id="h"></s>'+hour+'时');
        $('#minute_show').html('<s></s>'+minute+'分');
        $('#second_show').html('<s></s>'+second+'秒');
        intDiff--;
    }, 1000);

}


$(function(){

    timer(intDiff);

});

//ad自动滚动
$(function(){
    $(".example2").attr({width:"194",height:"275",interval:3500,selected:"seleted",deriction:"left"});

});


