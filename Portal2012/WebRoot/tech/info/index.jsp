<%@ page contentType="text/html;charset=utf-8"%>
<%@include file="/common/context.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<%@include file="/common/head.jsp" %>
	<script type="text/javascript">
	
	</script>
</head>
<body>
<%@include file="/common/header.jsp" %>

<div class="centerbody centerbox">
	
	<ec:table action="" method="get" items="list" var="var" view="ecan" width="99%"
					imagePath="${coreImgPath}/table/*.gif" showExports="false">
					<ec:row>
						<ec:column title="${i18n.exam.maintitle}" property="Id" width="32%">
							 <a href="viewmain?id=${var.id}" style="width: 320px; display: block; height: 25px; line-height: 25px; overflow: hidden;">
							    ${var.title}
							</a>
						</ec:column>
						<ec:column title="${i18n.i18n.filed.name}" property="Title" width="15%" filterOptions="DOMAIN_EXAM_PAPER_TYPE">
							 <d:viewDomain value="${var.type}" domain="EXAM_PAPER_TYPE" />
						</ec:column>
						<ec:column title="${i18n.exam.pkgopen}" property="TypeId" width="15%" filterOptions="DOMAIN_EXAM_PKG_OPEN">
							 <d:viewDomain value="${var.flag}" domain="EXAM_PKG_OPEN" />
						</ec:column>
						<ec:column title="${i18n.exam.passlevel}" property="CreateTime" width="15%" filterable="false" sortable="false">
							    ${var.passLevel}
						</ec:column>
						<ec:column title="${i18n.oper.text}" property="oper" width="24%" filterCell="oper" sortable="false">
							<a href="viewmain?id=${var.id}" class="oper">${i18n.oper.edit}</a>&nbsp;
							<a href="addques?id=${var.id}" class="oper">${i18n.button.addquestion}</a>&nbsp;
							<a href="javascript:void(0)" onclick="delmain('${var.id}')" class="oper">${i18n.oper.del}</a>
						</ec:column>
					</ec:row>
			</ec:table>
</div>
<%@include file="/common/footer.jsp" %>
</body> 
</html>