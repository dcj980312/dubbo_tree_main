<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/css/font-awesome.min.css">
	<script src="<%=request.getContextPath() %>/bootstrap/js/jquery-1.11.3.min.js"></script>
    <!-- 引入bootstrap-treeview的css js -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/treeview/bootstrap-treeview.min.css">
	<!-- 引入bootstrap-table的css -->
	<link  href="<%=request.getContextPath() %>/bootstrap/table/bootstrap-table.min.css" rel="stylesheet" >
	<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap/table/bootstrap-table.min.js"></script>
    <link  href="<%=request.getContextPath()%>/js/bootstrap/css/bootstrap.min.css" rel="stylesheet" >

	<!-- 引入bootstrap-treeview的css -->
	<link  href="<%=request.getContextPath()%>/js/treeview/bootstrap-treeview.min.css" rel="stylesheet" >
	
	<!-- 引入bootstrap-addTabs的css -->
	<link  href="<%=request.getContextPath()%>/js/addTabs/addTabs.css" rel="stylesheet" >
	
	<!-- 引入bootstrap的js-->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- 引入bootstrap的js-->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/treeview/bootstrap-treeview.min.js"></script>
	
	<!-- 引入bootstrap的js-->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/addTabs/addTabs.js"></script>
	<style type="text/css">
	body {padding-top:55px;}
	</style>
	<style>		
			body {padding-top:55px;}
			.show-grid [class ^="col-"] {
	            padding-top: 10px;
	            padding-bottom: 10px;
	            background-color: #eee;
	            border: 1px solid #ddd;
	            background-color: rgba(86, 61, 124, .15);
	            border: 1px solid rgba(86, 61, 124, .2);
	        }
	
			#wrapper {
	    padding-left: 0;
	    -webkit-transition: all 0.5s ease;
	    -moz-transition: all 0.5s ease;
	    -o-transition: all 0.5s ease;
	    transition: all 0.5s ease;
	}
	
	#wrapper.toggled {
	    padding-left: 250px;
	}
	
	#sidebar-wrapper {
	    z-index: 1000;
	    position: fixed;
	    left: 250px;
	    width: 0;
	    height: 100%;
	    margin-left: -250px;
	    overflow-y: auto;
	    background: #F5F5F5;
	    -webkit-transition: all 0.5s ease;
	    -moz-transition: all 0.5s ease;
	    -o-transition: all 0.5s ease;
	    transition: all 0.5s ease;
	}
	
	#wrapper.toggled #sidebar-wrapper {
	    width: 250px;
	}
	
	#page-content-wrapper {
	    width: 100%;
	    position: absolute;
	    padding: 15px;
	}
	
	#wrapper.toggled #page-content-wrapper {
	    position: absolute;
	    margin-right: -250px;
	}
	
	/* Sidebar Styles */
	
	.sidebar-nav {
	    position: absolute;
	    top: 0;
	    width: 250px;
	    margin: 0;
	    padding: 0;
	    list-style: none;
	}
	
	.sidebar-nav li {
	    text-indent: 20px;
	    line-height: 40px;
	}
	
	.sidebar-nav li a {
	    display: block;
	    text-decoration: none;
	    color: #999999;
	}
	
	.sidebar-nav li a:hover {
	    text-decoration: none;
	    color: #fff;
	    background: rgba(255,255,255,0.2);
	}
	
	.sidebar-nav li a:active,
	.sidebar-nav li a:focus {
	    text-decoration: none;
	}
	
	.sidebar-nav > .sidebar-brand {
	    height: 65px;
	    font-size: 18px;
	    line-height: 60px;
	}
	
	.sidebar-nav > .sidebar-brand a {
	    color: #999999;
	}
	
	.sidebar-nav > .sidebar-brand a:hover {
	    color: #fff;
	    background: none;
	}
	
	@media(min-width:768px) {
	    #wrapper {
	        padding-left: 250px;
	    }
	
	    #wrapper.toggled {
	        padding-left: 0;
	    }
	
	    #sidebar-wrapper {
	        width: 250px;
	    }
	
	    #wrapper.toggled #sidebar-wrapper {
	        width: 0;
	    }
	
	    #page-content-wrapper {
	        padding: 20px;
	        position: relative;
	    }
	
	    #wrapper.toggled #page-content-wrapper {
	        position: relative;
	        margin-right: 0;
	    }
	}
		</style>
	
	</head>
<body>
	<!--导航条开始  -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
	    	<!--定义在容器顶部  -->	
	  <div class="container-fluid">
		  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </button>
		<!-- Brand and toggle get grouped for better mobile display -->
		<!-- 头部信息 -->
		<div class="navbar-header">
		  <a class="navbar-brand glyphicon glyphicon-globe" href="#" id="menu-toggle">
	        Maven管理系统
		  </a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		
		  <ul class="nav navbar-nav">
			<li class="active"><a href="#"  class="glyphicon glyphicon-glass">&nbsp;Maven管理<span class="sr-only">(current)</span></a></li>
			<li><a href="#" class="glyphicon glyphicon-grain">&nbsp;Maven团队</a></li>
			<li class="dropdown">
			  <a href="#" class="dropdown-toggle glyphicon glyphicon-text-color" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">员工培训课程<span class="caret"></span></a>
			  <ul class="dropdown-menu">
				<li><a href="#" class="glyphicon glyphicon-cloud">如何提升个人能力</a></li>
				<li role="separator" class="divider"></li>
			  </ul>
			</li>
		  </ul>   
		  
	<!-- 右边的    导航 按钮 -->
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
		</div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
<!-- =======================导航栏结束============================= -->

<!-- =======================剩下的布局============================= -->
<div class="row">
		  <div class="col-md-3">
			
			   <a class="list-group-item" data-addtab="userMenu" data-target="#tabs" data-url="http://www.baidu.com">
			    	Maven管理菜单
			   </a>
				<!-- tree 的插件 -->
			  <div id="treeDiv"></div>                  
			 </div>
	  
	  	<div class="col-md-9">
				<!--   选项卡    -->
				<!-- Nav tabs -->
				<ul id="tabs" class="nav nav-tabs" role="tablist">
				    <li role="presentation" class="active">
				        <a href="#home" aria-controls="home" role="tab" data-toggle="tab">欢迎</a></li>
				</ul>
			  	<!-- 选项卡  内容 -->
				<!-- Tab panes -->
				<div class="tab-content">
				    <div role="tabpanel" style="" class="tab-pane active " id="home">
				    </div>
				</div> 
	</div>
	</div>	
<script type="text/javascript">
	 $(function (){
		/* 选项卡高度 */
		// $.addtabs({iframeUse:true})	
		 $.addtabs({iframeHeight:870});	
		$.ajax({
			url:"<%=request.getContextPath()%>/treeContoller/findTree.do",
			type:"post",
			dataType:"json",
			success:function (tree){
				//渲染树插件 treeview()
				$("#treeDiv").treeview({
					//data属性 树节点信息 json数组
					  data: tree,         
					  //tree默认展开的节点级别默认为2
					  levels: 0,
					  //含有子节点的图标
					  collapseIcon:'glyphicon glyphicon-star-empty',
					  //没有子节点的图标
					  emptyIcon:'glyphicon glyphicon-usd',
					  //背景颜色
					  //backColor: 'green'
					  //是否显示复选框
					  showCheckbox:true,
					  //是否允许选中多个节点
					  //multiSelect:true,
					  //启用节点的超链接功能默认为false,节点需指定href属性
					  enableLinks:true,
					  //事件当节点选中时
					  onNodeSelected:function(event,node){
						  //动态向 nav-tabs 导航标签添加tab选项卡
						  //addTabs方法  add() 添加tab  close()关闭tab  closeAll() 关闭全部tab
						  if(null !=  node.url){
							  $.addtabs.add({
								   id:node.id,
								   title:node.text,
								   url:"<%=request.getContextPath()%>"+node.url,
							  })
						  }
					  }
			})	
			}
		});
	}) 
</script>				
				
</body>
</html>