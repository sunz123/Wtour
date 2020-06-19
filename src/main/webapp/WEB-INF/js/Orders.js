layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel'], function(){
    var laydate = layui.laydate //日期
        ,laypage = layui.laypage //分页
        ,layer = layui.layer //弹层
        ,table = layui.table //表格
        ,carousel = layui.carousel //轮播
        ,$ = layui.$

    //向世界问个好
    layer.msg('Hello Order');

    //执行一个 table 实例
    var order_table = table.render({
        elem: '#orderlist'
        ,height: 420
        ,url: '/order/orderlist' //数据接口
        ,parseData: function (res) {
            return {
                "code":res.status,
                "msg": res.message,
                "count": res.total,
                "data": res.item
            };
        }
        ,title: '用户表'
        ,page : true
        ,toolbar: '#headBar' //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
        ,cols: [[ //表头
            {type: 'checkbox', fixed: 'left'}
            ,{field: 'orderid', title: '订单ID',  sort: true, fixed: 'left', totalRowText: '合计：'}
            ,{field: 'name', title: '用户名' }
            ,{field: 'amount', title: '数量',unresize: true }
            ,{field: 'spot', title: '地点',  sort: true, unresize: true}
            // unresize 是否拖拽
            ,{field: 'sumPrice', title: '总价', width:80 , unresize: true}
            ,{field: 'userid', title: '用户ID', unresize: true}
            ,{field: 'viewid', title: '景点ID', unresize: true}
            ,{fixed: 'right',toolbar: '#barDemo'}
        ]]
    });

    //监听头工具栏事件
    // 监听的是表格的lay-filter的取值
    table.on('toolbar(orderTable)', function(obj){
        var checkStatus = table.checkStatus(obj.config.id)//表格的id
            ,data = checkStatus.data; //获取选中的数据(将数据封装成json对象给你返回组成数组)
        //定义存放被删除数据id的数组
        var ids = [];
        for(var i=0;i<data.length;i++){
            ids.push(data[i].userid)//数组添加videoId
        }
        //obj.event：点击按钮的lay-event的取值
        switch(obj.event){
            case 'add':
                layer.open({
                    //0（信息框，默认）1（页面层）2（iframe层）
                    type:2,
                    content:"",//添加用户的页面
                    area: ['70%', '70%'],
                    shade:0.8,//弹层外的区域透明度取值
                    shadeClose:true//是否点击遮罩关闭
                })
                break;
            case 'delete':
                if(data.length === 0){
                    layer.msg('请选择一行');
                } else {
                    //将获取的选中要删除的id数组传到后台
                    $.ajax({
                        url:'',//批量删除的接口
                        type:"post",//请求方式
                        data:{//传递到后台的参数
                            //id数组
                            "ids":ids
                        },
                        //直接传输数组，需要将traditional:true
                        traditional:true,
                        dataType:"json",//返回的数据结果为json格式,
                        success:function(res){//后台请求执行成功之后的回调函数
                            //res:后台接口返回的数据
                            if(res.status==200){
                                //index:便于layui记录弹框的索引
                                //function:点击alert弹框的确定之后执行的函数
                                layer.alert(res.message,function(index){
                                    //关闭弹框
                                    layer.close(index);
                                    //重载表格
                                    order_table.reload();
                                })
                            }
                        }
                    })
                }
                break;
        };
    });

    //监听行工具事件
    table.on('tool(orderTable)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
        var data = obj.data //获得当前行数据
            ,layEvent = obj.event; //获得 lay-event 对应的值
        if(layEvent === 'detail'){
            layer.msg('查看操作');
        } else if(layEvent === 'del'){
            layer.confirm('真的删除行么', function(index){
                layer.close(index);
                //向服务端发送删除指令
                $.ajax({
                    url: '',//
                    type:"post",
                    data:{
                        "id":data.userid
                    },
                    dataType: "json",
                    success:function (res) {
                        if (res.status == 200){
                            layer.msg(res.message);
                        }
                    }
                });
            });
        } else if(layEvent === 'edit'){
            layer.msg('编辑操作');
        }
    });
})