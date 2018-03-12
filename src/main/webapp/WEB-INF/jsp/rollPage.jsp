<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<div class="page-bar">
	<c:if test="${param.currentPageNo>1}">
		<a href="javascript:page_nav(${param.formName},1);">首页</a>  
		<a href="javascript:page_nav(${param.formName},<c:out value="${param.currentPageNo-1}"/>);">上一页</a>
	</c:if>
	<c:if test="${currentPageNo<=1}">
		首页&nbsp;&nbsp;上一页
	</c:if>
	<c:if test="${param.currentPageNo<param.totalPageCount}">
		<a href="javascript:page_nav(${param.formName},<c:out value="${param.currentPageNo+1}" />);">下一页</a>
		<a href="javascript:page_nav(${param.formName},<c:out value="${param.totalPageCount}"/>);">最后一页</a>
	</c:if>
	&nbsp;&nbsp;第 ${param.currentPageNo}页/共${param.totalPageCount}页&nbsp;&nbsp;共${param.totalRecordCount }条记录
</div>

<script>
    function page_nav(frm,num){
        if(typeof(frm)!='object'){
            frm=document.forms[0];
        }
        with(frm){
            pageNo.value=num;
            submit();
        }
    }

    function jump_to(frm,pageno){
        if(typeof(frm)!='object'){
            frm=document.forms[0];
        }
        var regexp=/^\d+$/;
        if(!regexp.test(pageno)){
            alert('请输入正确的数字!');
            return false;
        }
        if(pageno==frm.pageNo.value){
            return false;
        }
        if(pageno>0 && pageno<=parseInt(frm.totalPageCount.value)){
            page_nav(frm,pageno);
            return false;
        }else{
            alert('页号错误！');
            return false;
        }
    }
</script>