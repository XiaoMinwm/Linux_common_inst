<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>��ҳ</title>
<!-- �� Bootstrap ���� CSS �ļ� -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
<script src="js/jquery.min.js"></script>
<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
<script src="js/bootstrap.min.js"></script>
</head>

<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">ѧԱ����</a></li>
        <li>�޸�����</li>
    </ul>
</div>

<form action="evaluation.do?update&id=${evaluation_list.id}" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">���۱��</label>
                <div class="col-sm-9">
                	<input type="text" name="id" value="${evaluation_list.id }" readonly="readonly" class="form-control input-sm" placeholder="���������۱��"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-9">
                	<input type="text" name="title" value="${evaluation_list.title }" class="form-control input-sm" placeholder="����������"/>
                </div>
            </div>
        </div>

    </div>
    
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">�γ�����</label>
                <div class="col-sm-9">
               			<input type="text" name="course" value="${evaluation_list.course }" class="form-control input-sm" placeholder="������γ�����"/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��ʦ</label>
                <div class="col-sm-9">
               		 <input type="text" name="teacher" value="${evaluation_list.teacher }" class="form-control input-sm" placeholder="�������ʦ"/>
                </div>
            </div>
        
        </div>

    </div>
        <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">����ʱ��</label>
                <div class="col-sm-9">
               			<input type="date" name="etime" value="<fmt:formatDate value='${evaluation_list.etime }'/>" class="form-control input-sm" placeholder="����������ʱ��"/>
                </div>
            </div>
        </div>
		<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">ѧ��</label>
                <div class="col-sm-9">
                	<select name="student.id" class="form-control input-sm">
                		<c:forEach items="${stu_list}" var="s">
                    	<option  ${evaluation_list.student.id == s.id ? 'selected' :''} value="${s.id }">${s.name }</option>
                    	</c:forEach>
                    </select>
                </div>
            </div>
        </div>

    </div>

 
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">��������</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��������</label>
                <div class="col-sm-9">
                	<textarea class="form-control" name="content">${evaluation_list.content}</textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="����"/>

              <a class="btn btn-warning" href="evaluation.do?findAll">������һ��</a>
        </div>
    </div>
</form>

</body>
</html>