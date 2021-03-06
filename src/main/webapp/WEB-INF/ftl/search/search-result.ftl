<link rel="stylesheet" href="${base}/resources/css/search.css">
<script type="text/javascript" src="${base}/resources/js/search.js"></script>
<body>
<div id="settlement-result-by-btn"></div>
<div class="container-div">
    <div class="result-container">
        <div id="cv-info">
            <h4>商用车参数</h4>
            <div id="cv-info-container">
                <div id="cv-info-all">
                <#if cvPojo.internalModels!=''>
                    <div>
                        &emsp;内部型号：${cvPojo.internalModels}
                        <input type="hidden" id="cv-internal-models" value="${cvPojo.internalModels}">
                    </div>
                </#if>

                <#if cvPojo.externalModels!=''>
                    <div>
                        &emsp;公告型号：${cvPojo.externalModels}
                    </div>
                </#if>

                <#if cvPojo.retailPrice!=''>
                    <div>
                        &emsp;&emsp;零售价：${cvPojo.retailPrice}
                        <input type="hidden" id="retail-price" value="${cvPojo.retailPrice}" />
                    </div>
                </#if>

                <#if cvPojo.cvTypeSeries!=''>
                    <div>
                        &emsp;所属车系：${cvPojo.cvTypeSeries.seriesName}
                    </div>
                </#if>

                <#if cvPojo.cab!=''>
                    <div>
                        &emsp;&emsp;驾驶室：${cvPojo.cab.partsName}
                    </div>
                </#if>

                <#if cvPojo.engine!=''>
                    <div>
                        &emsp;&emsp;发动机：${cvPojo.engine.partsName}
                    </div>
                </#if>

                <#if cvPojo.gearbox!=''>
                    <div>
                        &emsp;&emsp;变速箱：${cvPojo.gearbox.partsName}
                    </div>
                </#if>

                <#if cvPojo.drive!=''>
                    <div>
                        &emsp;&emsp;驱动桥：${cvPojo.drive.partsName}
                    </div>
                </#if>

                <#if cvPojo.wheelBase!=''>
                    <div>
                        &emsp;&emsp;&emsp;轴距：${cvPojo.wheelBase}
                    </div>
                </#if>

                <#if cvPojo.tire!=''>
                    <div>
                        &emsp;&emsp;&emsp;轮胎：${cvPojo.tire.partsName}
                    </div>
                </#if>

                <#if cvPojo.bunkers!=''>
                    <div>
                        &emsp;&emsp;&emsp;油箱：${cvPojo.bunkers.partsName}
                    </div>
                </#if>

                <#if cvPojo.flip!=''>
                    <div>
                        &emsp;&emsp;&emsp;翻转：${cvPojo.flip.partsName}
                    </div>
                </#if>

                <#if cvPojo.mount!=''>
                    <div>
                        &emsp;&emsp;&emsp;悬置：${cvPojo.mount.partsName}
                    </div>
                </#if>

                <#if cvPojo.otherDescription!=''>
                    <div>
                        &emsp;其他说明：${cvPojo.otherDescription}
                    </div>
                </#if>

                <#if cvPojo.tractiveTonnage!=''>
                    <div>
                        准牵引质量：${cvPojo.tractiveTonnage}
                    </div>
                </#if>

                <#if cvPojo.carSize!=''>
                    <div>
                        &emsp;上装尺寸：${cvPojo.carSize}
                    </div>
                </#if>
                </div>

            </div>
            <div id="cv-info-footer">
                <button class="btn btn-default btn-success" type="button">加/减/换装 <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></button>
            </div>
        </div>
    </div>

    <div id="add-remove-container">
        <div id="add-container-list">
            <h4>加/减/换装</h4>
            <div id="add-list-content">
                <div id="add-content-all">
                    <div class="add-content-div">
                        <span class="add-div-span"><strong>驾驶室：</strong><span>${cvPojo.cab.partsName}</span></span>
                        <div class="btn-group">
                            <button class="btn btn-default add-btn" type="button">加</button>
                            <button class="btn btn-default remove-btn" type="button">减</button>
                            <button class="btn btn-default replace-btn" type="button">换</button>
                        </div>

                        <div class="add-div-item">
                            <div class="input-group lov-div add-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default cab-add-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="input-group lov-div remove-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default cab-remove-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="input-group lov-div replace-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default cab-replace-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="add-div-total">
                                <span class="update-add-price">总计：<span>0</span> 元</span>
                            </div>
                        </div>
                    </div>

                    <div class="add-content-div">
                        <span class="add-div-span"><strong>发动机：</strong><span>${cvPojo.engine.partsName}</span></span>
                        <div class="btn-group">
                            <button class="btn btn-default add-btn" type="button">加</button>
                            <button class="btn btn-default remove-btn" type="button">减</button>
                            <button class="btn btn-default replace-btn" type="button">换</button>
                        </div>

                        <div class="add-div-item">
                            <div class="input-group lov-div add-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default engine-add-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="input-group lov-div remove-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default engine-remove-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="input-group lov-div replace-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default engine-replace-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="add-div-total">
                                <span class="update-add-price">总计：<span>0</span> 元</span>
                            </div>
                        </div>
                    </div>
                    <div class="add-content-div">
                        <span class="add-div-span"><strong>变速箱：</strong><span>${cvPojo.gearbox.partsName}</span></span>
                        <div class="btn-group">
                            <button class="btn btn-default add-btn" type="button">加</button>
                            <button class="btn btn-default remove-btn" type="button">减</button>
                            <button class="btn btn-default replace-btn" type="button">换</button>
                        </div>

                        <div class="add-div-item">
                            <div class="input-group lov-div add-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default gearbox-add-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="input-group lov-div remove-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default gearbox-remove-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="input-group lov-div replace-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default gearbox-replace-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="add-div-total">
                                <span class="update-add-price">总计：<span>0</span> 元</span>
                            </div>
                        </div>
                    </div>
                    <div class="add-content-div">
                        <span class="add-div-span"><strong>驱动桥：</strong><span>${cvPojo.drive.partsName}</span></span>
                        <div class="btn-group">
                            <button class="btn btn-default add-btn" type="button">加</button>
                            <button class="btn btn-default remove-btn" type="button">减</button>
                            <button class="btn btn-default replace-btn" type="button">换</button>
                        </div>

                        <div class="add-div-item">
                            <div class="input-group lov-div add-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default drive-add-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="input-group lov-div remove-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default drive-remove-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="input-group lov-div replace-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default drive-replace-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="add-div-total">
                                <span class="update-add-price">总计：<span>0</span> 元</span>
                            </div>
                        </div>
                    </div>
                    <div class="add-content-div">
                        <span class="add-div-span"><strong>轮胎：</strong><span>${cvPojo.tire.partsName}</span></span>
                        <div class="btn-group">
                            <button class="btn btn-default add-btn" type="button">加</button>
                            <button class="btn btn-default remove-btn" type="button">减</button>
                            <button class="btn btn-default replace-btn" type="button">换</button>
                        </div>

                        <div class="add-div-item">
                            <div class="input-group lov-div add-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default tire-add-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="input-group lov-div remove-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default tire-remove-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="input-group lov-div replace-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default tire-replace-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="add-div-total">
                                <span class="update-add-price">总计：<span>0</span> 元</span>
                            </div>
                        </div>
                    </div>
                    <div class="add-content-div">
                        <span class="add-div-span"><strong>油箱：</strong><span>${cvPojo.bunkers.partsName}</span></span>
                        <div class="btn-group">
                            <button class="btn btn-default add-btn" type="button">加</button>
                            <button class="btn btn-default remove-btn" type="button">减</button>
                            <button class="btn btn-default replace-btn" type="button">换</button>
                        </div>

                        <div class="add-div-item">
                            <div class="input-group lov-div add-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default bunkers-add-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="input-group lov-div remove-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default bunkers-remove-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="input-group lov-div replace-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default bunkers-replace-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="add-div-total">
                                <span class="update-add-price">总计：<span>0</span> 元</span>
                            </div>
                        </div>
                    </div>
                    <div class="add-content-div">
                        <span class="add-div-span"><strong>其他配件：</strong></span>
                        <div class="btn-group">
                            <button class="btn btn-default add-btn" type="button">加</button>
                            <button class="btn btn-default remove-btn" type="button">减</button>
                            <button class="btn btn-default replace-btn" type="button">换</button>
                        </div>

                        <div class="add-div-item">
                            <div class="input-group lov-div add-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default other-add-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="input-group lov-div remove-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default other-remove-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="input-group lov-div replace-div-lov">
                                <input id="form-typeId" class="form-control" type="hidden" placeholder="" name="typeId">
                                <div class="form-control lov-input" type="text">
                                    <span class="lov-name"></span>
                                    <button class="btn-clear-input" type="button">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-default other-replace-lov" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="add-div-total">
                                <span class="update-add-price">总计：<span>0</span> 元</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="add-list-footer">
                <button class="btn btn-default btn-success settlement-btn" type="button">结算</button>
            </div>

        </div>
    </div>
</div>

<script>
    $('.cab-add-lov').lov({
        columns:[
            {field:'addName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/add/read',
        param:{
            typeId:1
        },
        updateItem:true
    });

    $('.cab-remove-lov').lov({
        columns:[
            {field:'addName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/add/read',
        param:{
            typeId:1,
            addName:'减'
        },
        updateItem:true
    });

    $('.cab-replace-lov').lov({
        columns:[
            {field:'replaceName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/replace/read',
        param:{
            typeId:1,
            replaceBefore:${cvPojo.cab.partsId}
        },
        updateItem:true
    });

    $('.engine-add-lov').lov({
        columns:[
            {field:'addName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/add/read',
        param:{
            typeId:3
        },
        updateItem:true
    });

    $('.engine-remove-lov').lov({
        columns:[
            {field:'addName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/add/read',
        param:{
            typeId:3,
            addName:'减'
        },
        updateItem:true
    });

    $('.engine-replace-lov').lov({
        columns:[
            {field:'replaceName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/replace/read',
        param:{
            typeId:3,
            replaceBefore:${cvPojo.engine.partsId}
        },
        updateItem:true
    });

    $('.gearbox-add-lov').lov({
        columns:[
            {field:'addName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/add/read',
        param:{
            typeId:2
        },
        updateItem:true
    });

    $('.gearbox-remove-lov').lov({
        columns:[
            {field:'addName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/add/read',
        param:{
            typeId:2,
            addName:'减'
        },
        updateItem:true
    });

    $('.gearbox-replace-lov').lov({
        columns:[
            {field:'replaceName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/replace/read',
        param:{
            typeId:2,
            replaceBefore:${cvPojo.gearbox.partsId}
        },
        updateItem:true
    });

    $('.drive-add-lov').lov({
        columns:[
            {field:'addName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/add/read',
        param:{
            typeId:6
        },
        updateItem:true
    });

    $('.drive-remove-lov').lov({
        columns:[
            {field:'addName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/add/read',
        param:{
            typeId:6,
            addName:'减'
        },
        updateItem:true
    });

    $('.drive-replace-lov').lov({
        columns:[
            {field:'replaceName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/replace/read',
        param:{
            typeId:6,
            replaceBefore:${cvPojo.drive.partsId}
        },
        updateItem:true
    });

    $('.tire-add-lov').lov({
        columns:[
            {field:'addName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/add/read',
        param:{
            typeId:4
        },
        updateItem:true
    });

    $('.tire-remove-lov').lov({
        columns:[
            {field:'addName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/add/read',
        param:{
            typeId:4,
            addName:'减'
        },
        updateItem:true
    });

    $('.tire-replace-lov').lov({
        columns:[
            {field:'replaceName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/replace/read',
        param:{
            typeId:4,
            replaceBefore:${cvPojo.tire.partsId}
        },
        updateItem:true
    });

    $('.bunkers-add-lov').lov({
        columns:[
            {field:'addName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/add/read',
        param:{
            typeId:5
        },
        updateItem:true
    });

    $('.bunkers-remove-lov').lov({
        columns:[
            {field:'addName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/add/read',
        param:{
            typeId:5,
            addName:'减'
        },
        updateItem:true
    });

    $('.bunkers-replace-lov').lov({
        columns:[
            {field:'replaceName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/replace/read',
        param:{
            typeId:5,
            replaceBefore:${cvPojo.bunkers.partsId}
        },
        updateItem:true
    });

    $('.other-add-lov').lov({
        columns:[
            {field:'addName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/add/read',
        param:{
            typeId:7
        },
        updateItem:true
    });

    $('.other-remove-lov').lov({
        columns:[
            {field:'addName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/add/read',
        param:{
            typeId:7,
            addName:'减'
        },
        updateItem:true
    });

    $('.other-replace-lov').lov({
        columns:[
            {field:'replaceName',name:'配件名称'},
            {field:'taxPrice',name:'配件价格'}
        ],
        url:'/parts/replace/read',
        param:{
            typeId:7
        },
        updateItem:true
    });

    $('#cv-info-all').perfectScrollbar();
    $('#add-content-all').perfectScrollbar();

    var $settlementByBtnInfo =  $('#settlement-result-by-btn').kendoWindow({
        width: '81%',
        height: '79%',
        modal: true,//最上面不能点其他地方
        draggable: false,//不能拖动
        resizable: false,
        title:'<strong>结算详情</strong>',
        pinned: true,
        visible: false,
        scrollable: false
    }).data("kendoWindow");
    $settlementByBtnInfo.center();

    $(function () {
       $('.settlement-btn').click(function () {
           var settlement = {};
           var partsArray = [];
           var totalPrice = Number($('#retail-price').val())*10000;
           var $contentArray = $('.add-content-div');
           for(var i=0;i<$contentArray.length;i++){
               var parts = {};
               var $content = $contentArray.eq(i);
               var partsName = $content.children('.add-div-span').children('strong').text();
               var originalParts = $content.children('.add-div-span').children('span').text();
               var price = $content.find('.update-add-price').children('span').text();
               totalPrice = totalPrice + Number(price);
               parts['partsName'] = partsName;
               parts['originalParts'] = originalParts;

               var addArray = [];
               var removeArray = [];
               var replaceArray = [];
               var $changeItemArray = $content.find('.update-item');
               for(var j = 0;j<$changeItemArray.length;j++){
                   var changeItem = $changeItemArray.eq(j);
                   var itemContent = changeItem.children('.update-add-content').text();
                   var $itemPrice = changeItem.children('span').eq(1);
                   var type = $itemPrice.attr('class');
                   //判断是否是时间，如果是时间就进行转换
                   var addReg = new RegExp('add');
                   var removeReg = new RegExp('remove');
                   var replaceReg = new RegExp('replace');
                   var change = {};
                   change['partsName'] = itemContent;
                   change['taxPrice'] = $itemPrice.text();
                   if(addReg.test(type)){
                       addArray.push(change);
                   }
                   if(removeReg.test(type)){
                       removeArray.push(change);
                   }
                   if(replaceReg.test(type)){
                       replaceArray.push(change);
                   }
               }
               parts['addArray'] = addArray;
               parts['removeArray'] = removeArray;
               parts['replaceArray'] = replaceArray;
               parts['price'] = price;
               partsArray.push(parts);
           }
           settlement['internalModels'] = $('#cv-internal-models').val();
           settlement['partsJson'] = JSON.stringify(partsArray);
           settlement['totalPrice'] = totalPrice;
           settlement['createTime'] = new Date();
           console.log(settlement);

           $.ajax({
               url: '/settlement/create',
               type:'post',
               dataType:'html',
               contentType: "application/json;charset=utf-8",
               data:JSON.stringify(settlement),
               async:false,
               success:function (data) {
                   if(data!=="failure"){
                       $settlementByBtnInfo.content(data);
                       $settlementByBtnInfo.open();
                   }
               },
               error:function () {
                   alert('发生未知错误，请稍后再试');
               }
           });
       });
    });
</script>

</body>