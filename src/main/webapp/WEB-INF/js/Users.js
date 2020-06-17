layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel'], function(){
    var laydate = layui.laydate //日期
        ,laypage = layui.laypage //分页
        ,layer = layui.layer //弹层
        ,table = layui.table //表格
        ,carousel = layui.carousel //轮播

    //向世界问个好
    layer.msg('Hello World');

    //执行一个 table 实例
    table.render({
        elem: '#userlist'
        ,height: 500
        ,url: 'user/userlist' //数据接口
        ,parseData: function (res) {
            return {
                "code":res.status,
                "msg": res.message,
                "count": res.total,
                "data": res.item
            };
        }
        ,title: '用户表'
        ,page: true //开启分页
        ,toolbar: 'default' //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
        ,totalRow: true //开启合计行
        ,cols: [[ //表头
            {type: 'checkbox', fixed: 'left'}
            ,{field: 'userid', title: 'ID', width:80, sort: true, fixed: 'left', totalRowText: '合计：'}
            ,{field: 'username', title: '用户名', width:80}
            ,{field: 'password', title: '密码', width: 90, sort: true, totalRow: true}
            ,{field: 'identity', title: '身份', width:80, sort: true}
            ,{field: 'sex', title: '性别', width: 80, sort: true, totalRow: true}
            ,{field: 'realname', title: '真实姓名', width:150}
            ,{fixed: 'right', width: 165, align:'center', toolbar: '#barDemo'}
        ]]
    });
})