$(function() {
    var btn = $('.tabbar-wrap>.item>p');
    var oDiv = $('.tabbar-wrap>.item>div')
    for (var i = 0; i < btn.length; i++) {
        btn[i].index = i;
        btn[i].onclick = function() {
            for (var j = 0; j < btn.length; j++) {
                btn[j].removeAttribute('class');
                oDiv[j].removeAttribute('class');
            }
            this.setAttribute('class', 'active');
            oDiv[this.index].setAttribute('class', 'line');
        };
    };

    $(function() {
        $.ajax({
            type: "get",
            url: "../../php/get.php",
            dataType: "json",
            success: function(response) {
                // console.log(response);
                var prolist = $('.prolist');
                var template = '';
                response.forEach(function(elm, i) {
                    // console.log(elm);
                    template = `
                    <li class="item-wrap">
                        <div>
                            <a href="details.html?id=${elm.id}" target="_blank">
                                <img src="${elm.pic}" alt="aa" class="item-img">
                                <div class="item-info">
                                    <p class="item-title">
                                       ${elm.title}
                                    </p>
                                    <div class="price-line">
                                        <div class="price">
                                            <p class="price-unit">￥</p>
                                            <p class="price-value">${elm.price}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="user-line">
                                    <div class="user-info">
                                        <img src="../img/TB2CsmKbbBmpuFjSZFAXXaQ0pXa_!!0-mytaobao.jpg" alt="a" class="usericon">
                                        <p class="user-name">大***u</p>
                                        <img src="../img/TB1HCq9GN1YBuNjy1zcXXbNcXXa-168-24.png" alt="aa" class="user-tag">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </li>
                    `;
                    prolist.append(template);
                });
            }
        });
        $('.c').on('mouseover', function() {
            $('.d').css('display', 'block');
        });
        $('.c').on('mouseout', function() {
            $('.d').css('display', 'none');
        });
        $('.h').on('mouseover', function() {
            $('.e').css('display', 'block');
        });
        $('.h').on('mouseout', function() {
            $('.e').css('display', 'none');
        });
        $('.i').on('mouseover', function() {
            $('.f').css('display', 'block');
        });
        $('.i').on('mouseout', function() {
            $('.f').css('display', 'none');
        });
        $('.j').on('mouseover', function() {
            $('.g').css('display', 'block');
        });
        $('.j').on('mouseout', function() {
            $('.g').css('display', 'none');
        });
    })
})