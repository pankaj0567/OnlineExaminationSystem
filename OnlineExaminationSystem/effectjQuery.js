$(document).ready(function () {
    var inputSelector = 'input:not(input[type=button], input[type=submit], input[type=reset]), textarea, select';
    $(inputSelector).focus(function () {
        $(this).css({
            'background-color': 'lightblue',
            'color': 'black'

        });
    });
    $(inputSelector).blur(function () {
        $(this).css({
            'background-color': 'white',
            'color': 'black'

        });

    });
    $(function () {
        var img = [
          ' Images/banner-1.jpg',
          ' Images/banner-2.jpg',
          ' Images/banner-3.jpg',
          ' Images/banner-4.jpg',
          ' Images/banner-5.jpg',
          ' Images/banner-6.jpg',
          ' Images/banner-7.jpg',
          ' Images/banner-8.jpg',
          ' Images/banner-9.jpg',
          ' Images/banner-10.jpg',
          ' Images/banner-11.jpg',
          ' Images/banner-12.png',
          ' Images/banner-13.jpg',
          ' Images/banner-14.jpg'

        ];
        var cnt = img.length;
        var $ImageSlide = $('#fideinfadeout');
        $ImageSlide.attr('src', img[cnt - 1]);
        setInterval(slider, 3000);
        function slider()
        {
            $ImageSlide.fadeOut('slow', function () {
                $(this).attr('src', img[(img.length++) % cnt]).fadeIn('slow');

            });
        }
    });
});
