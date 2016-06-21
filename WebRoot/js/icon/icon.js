// 加载图标列表
function loadIconList(){
	// 收集参数
	var param = buildParam();
	
	var page = $("#page").val();
	if(isEmpty(page) || page == 0){
		page = 1;
	}
	
	// 查询列表
	$.ajax({
        url : '../icon/load',
        data : 'page='+page+"&param="+param,
        success  : function(data) {
        	$("#dataList").html(data);
		}
    });
	
}

//跳转图标页面
function showIcon(){
	$.ajax({
        url : '../icon/load',
        success  : function(data) {
        	$('#showIconContent').html(data);
        	$('#showIconModal').modal('show');
        	$('#showIconModal').addClass('animated');
        	$('#showIconModal').addClass('bounceInLeft');
		}
    });
}

//关闭编辑窗口
function closeShowIconWindow(){
	$('#showIconModal').modal('hide');
}
