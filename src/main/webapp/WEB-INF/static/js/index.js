$(function () {

    $(".hide-slideshow").on("click", function () {
        $("#myCarousel").slideUp(1000);
        $(".hide-slideshow").hide();
        $(".show-slidehide").show();
    });

    $(".show-slidehide").on("click", function () {
        $("#myCarousel").slideDown(1000);
        $(".hide-slideshow").show();
        $(".show-slidehide").hide();
    });

 /*   $(".topMain li a").on("click",function(){
            $(".topMain li a").removeClass("on");
            $(this).addClass("on");
            return false;//��ֹҳ����ת
    });*/

    $(".lontit a").on("mouseover",function(){
        $(".lontit a").removeClass("Selected");
        $(this).addClass("Selected");
        return false;//��ֹҳ����ת
    });


    $(".notice").on("mouseover",function(){
        $(".sider1").show();
        $(".sider2").hide();
    });

    $(".new").on("mouseover",function(){
        $(".sider1").hide();
        $(".sider2").show();
    });



    $('#myCarousel').carousel({interval: 3000});
})
