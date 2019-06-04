$(function() {
    var scale = $('.scale'),
        small = $('.small'),
        movebox = $('.movebox'),
        big = $('.big'),
        bigpic = $('.bigpic');

    small.on('mouseover', function() {
        movebox.removeClass('hide').addClass('show');
        big.removeClass('hide').addClass('show');

        // 1，计算movebox大小  movebox:small = big:bigpic  movebox:big = small:bigpic
        movebox.css({
            'width': small.offset().width * big.offset().width / bigpic.offset().width + 'px',
            'height': small.offset().height * big.offset().height / bigpic.offset().height + 'px'
        });

        // 2. movebox鼠标跟随
        small.on('mousemove', function(ev) {
            ev = ev || event;

            var left = ev.clientX - scale.offset().left - (movebox.offset().width / 2);
            var top = ev.clientY - scale.offset().top - (movebox.offset().height / 2);

            // 3. 比例计算 movebox:small = big:bigpic  movebox:big = small:bigpic
            var prop = bigpic.offset().width / small.offset().height;

            //控制边界
            if (left < 0) {
                left = 0;
            } else if (left > small.offset().width - movebox.offset().width) {
                left = small.offset().width - movebox.offset().width - 2;
            }

            if (top < 0) {
                top = 0;
            } else if (top > small.offset().height - movebox.offset().height) {
                top = small.offset().height - movebox.offset().height - 2;
            }

            movebox.css({
                'left': left + 'px',
                'top': top + 'px'
            })

            bigpic.css({
                'left': -left * prop + "px",
                'top': -top * prop + "px"
            })
        });


    });



    small.on('mouseout', function() {
        movebox.removeClass('show').addClass('hide');
        big.removeClass('show').addClass('hide');
    });
});