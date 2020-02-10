<%@ attribute name="id" required="true"%>
<%@ attribute name="name" required="false" %>
<%@ attribute  name="data" required="false" %>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<input type="text" id="${id}" name="${name }"  required />
<script>
	var $j = jQuery.noConflict();
	$j("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
	$j("#${id}").val('<fmt:formatDate value="${produto.dataInicioVenda.time}" pattern="dd/MM/yyyy" />');
</script>