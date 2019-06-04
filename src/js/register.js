$(function() {
    $('#form1').validate({
        rules: {
            username: {
                required: true,
                minlength: 2,
                maxlength: 10,
            },
            password: {
                required: true,
                minlength: 6,
            }
        },
        messages: {
            username: {
                required: '用户名不能为空',
                minlength: '用户名不能小于2',
                maxlength: '用户名不能大于10',
                remote: '用户名已存在'
            },
            password: {
                required: '密码不能为空'
            },
        }
    });
});

$.validator.setDefaults({
    /*添加校验成功后的执行函数--修改提示内容，并为正确提示信息添加新的样式(默认是valid)*/
    success: function(label) {
        label.text('√').css('color', 'green').addClass('valid');
    }
});