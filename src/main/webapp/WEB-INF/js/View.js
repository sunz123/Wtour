layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel','form','upload'], function(){
    var laydate = layui.laydate //日期
        ,laypage = layui.laypage //分页
        ,layer = layui.layer //弹层
        ,table = layui.table //表格
        ,carousel = layui.carousel //轮播
        ,$ = layui.$
        ,form = layui.form
        ,upload = layui.upload;

    //向世界问个好
    layer.msg('Hello View');

    //执行一个 table 实例
    var view_table = table.render({
        elem: '#viewlist'
        ,height: 420
        ,url: '/view/viewlist' //数据接口
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
            ,{field: 'viewid', title: '景点ID',  sort: true, fixed: 'left', totalRowText: '合计：'}
            ,{field: 'spot', title: '景点' }
            ,{field: 'place', title: '属地',unresize: true }
            ,{field: 'price', title: '门票价格',  sort: true, unresize: true}
            // unresize 是否拖拽
            ,{field: 'brief', title: '简介', width:80, unresize: true}
            ,{field: 'videoPath', title: '视频信息', unresize: true}
            ,{field: 'imagePath', title: '图片信息', unresize: true}
            ,{fixed: 'right',toolbar: '#barDemo'}
        ]]
    });

    //监听头工具栏事件
    // 监听的是表格的lay-filter的取值
    table.on('toolbar(viewTable)', function(obj){
        var checkStatus = table.checkStatus(obj.config.id)//表格的id
            ,data = checkStatus.data; //获取选中的数据(将数据封装成json对象给你返回组成数组)
        //定义存放被删除数据id的数组
        var ids = [];
        for(var i=0;i<data.length;i++){
            ids.push(data[i].viewid)//数组添加videoId
        }
        //obj.event：点击按钮的lay-event的取值
        switch(obj.event){
            case 'add':
                layer.open({
                    //0（信息框，默认）1（页面层）2（iframe层）
                    type:2,
                    content:"/view/add_view_page",//添加景点的页面
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
                        url:"",//批量删除的接口
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
                                    view_table.reload();
                                })
                            }
                        }
                    })
                }
                break;
        };
    });

    //监听行工具事件
    table.on('tool(viewTable)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
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
                        "id":data.viewid
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

    //图片上传
    var uploadInst = upload.render({
        elem: '#chooseimg'//上传按钮的id
        ,url: '/view/upload' //上传接口
        //,accept:"img"//指定上传文件的类型(默认是图片)
        ,auto:true//设置true，选完文件自动上传，
        //如果设置为false,需要bindAction参数指向其他按钮实现文件上传
        ,field:"uploadFile"//设定文件域的字段名
        ,data:{
            parentName:"images"// 上传文件的父文件夹(video或者img)
        }
        ,done: function(res){
            if(res.status==200){
                $("#imagePath").val(res.item)//文件存储相对路径给输入框赋值
                $("#delimg").show()//显示删除图片的按钮
                //上传图片按钮设置为不可点击的状态
                $("#chooseimg").addClass("layui-btn-disabled");
                $("#chooseimg").attr("disabled",true);//按钮设置为不可点击状态
            }
        }
        ,error: function(){
            layer.msg("网络延迟，上传失败")
        }
    });

    //图片删除
    $(".remove-upload").click(function(){
        //获取当前点击删除按钮的id
        var id = $(this).attr("id");
        //定义一个变量存储向后台传递的被删除文件的路径
        var removeTarget = "";
        var uploadButton = "";
        //定义变量存储上传路径显示的标签
        var showPath = "";
        if(id=="delimg"){
            //删除图片
            removeTarget = $("#imagePath").val()//图片的路径
            uploadButton = $("#chooseimg")//上传图片的按钮
            showPath = $("#imagePath")//显示图片路径的标签
        }
        //实验ajax根据文件路径删除文件
        $.ajax({
            uri:"view/removeFile",
            type:"post",
            data:{
                //被删除文件的相对路径
                removeTarget:removeTarget
            },
            dataType:"json",
            success:function (res) {
                layer.msg(res.message);
                //隐藏删除标签
                $("#"+id).hide()
                //对应的上传按钮恢复为可点击的状态
                uploadButton.removeClass("layui-btn-disabled");
                uploadButton.attr("disabled",false);
                //清空当前被删除视频的路径
                showPath.val("");
            }
        })
    });
    //监听添加视频提交
    // submit_img:是submit按钮的lay-filter取值
    form.on('submit(submit_img)', function(data){
        // console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
        // console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
        // console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
        // return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        $.ajax({
            type:"post",
            url:"/view/addView",
            data:data.field,//当前容器的全部表单字段提交到后台
            dataType:"json",
            success:function(res){
                if(res.status==200){
                    layer.msg(res.message);
                    window.parent.location.reload()//父窗口重载
                }else{
                    layer.msg(res.message);
                }
            }
        })
        return false;//阻止表单跳转
    });


})