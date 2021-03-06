<#assign base=request.contextPath />
<link rel="stylesheet" href="${base}/resources/css/sys.css">
<body>
<div class="sys-grid">
    <div id="role-grid"></div>
</div>

<script>

    var roleDataSource = new grid.dataSource({
        transport: {
            create: {
                url: "/role/create",
                dataType: "json"
            },
            destroy :{
                url:"/role/destroy",
                dataType: "json"
            },
            update: {
                url:"/role/update",
                dataType: "json"
            },
            read :{
                url:"/role/read",
                dataType: "json"
            },
            param:{

            }
        },
        page: 1,
        pageSize: 10
    });

    var roleArgs = {
        toolBar:true,
        editable:true,
        columns:[
            {
                field:'roleCode',
                title:'角色代码',
                attributes:{
                    style:{
                        'width':'15%',
                        'text-align': 'center'
                    }
                },
                template:
                '<div class="input-group grid-input">'+
                '<input style="display: none;" type="text" class="form-control" placeholder="" value="" name="roleCode">'+
                '<span></span>'+
                '</div>'
            },{
                field:'roleName',
                title:'用户名',
                attributes:{
                    style:{
                        'width':'15%',
                        'text-align': 'center'
                    }
                },
                template:
                '<div class="input-group grid-input">'+
                '<input style="display: none;" type="text" class="form-control" placeholder="" value="" name="roleName">'+
                '<span></span>'+
                '</div>'
            },{
                field:'roleDescribe',
                title:'角色描述',
                attributes:{
                    style:{
                        'width':'20%',
                        'text-align': 'center'
                    }
                },
                template:
                '<div class="input-group grid-input">'+
                '<input style="display: none;" type="text" class="form-control" placeholder="" value="" name="roleDescribe">'+
                '<span></span>'+
                '</div>'
            },{
                field:'validTime',
                title:'开始时间',
                attributes:{
                    style:{
                        'width':'15%',
                        'text-align': 'center'
                    }
                },
                template:
                '<div class="input-group grid-input">'+
                '<input style="display: none;" type="text" placeholder="" value="" name="validTime">'+
                '<span></span>'+
                '</div>'
            },{
                field:'deadTime',
                title:'失效时间',
                attributes:{
                    style:{
                        'width':'15%',
                        'text-align': 'center'
                    }
                },
                template:
                '<div class="input-group grid-input">'+
                '<input style="display: none;" type="text" placeholder="" value="" name="deadTime">'+
                '<span></span>'+
                '</div>'
            },{
                field:'status',
                title:'状态',
                attributes:{
                    style:{
                        'width':'auto',
                        'text-align': 'center'
                    }
                },
                template:
                '<div class="input-group grid-input">'+
                '<input style="display: none;" type="text" class="form-control" placeholder="" value="" name="status">'+
                '<span></span>'+
                '</div>'
            }
        ],
        dataSource:roleDataSource,
        dataId: 'roleId'
    };
    $('#role-grid').dataGrid(roleArgs);
</script>
</body>