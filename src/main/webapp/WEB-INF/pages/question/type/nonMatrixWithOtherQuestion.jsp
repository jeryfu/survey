<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@ include file="/common/meta.jsp" %>
	<title>非矩阵问题设计</title>
</head>
<body>
	<%@ include file="/common/header.jsp" %>
	<form action="${ctx }/question" method="post">
		<%@ include file="/WEB-INF/pages/question/type/common.jsp" %>
		<table>
			<tr>
				<td colspan="2" class="tdQHeaderL">非矩阵型问题设计:</td>
			</tr>
			<tr>
				<td width="35%" style="text-align: right;">问题标题:</td>
				<td width="*" style="text-align: left;">
					<input type="text" name="title" value="${question.title }" class="text" />
				</td>
			</tr>
			<tr>
				<td style="text-align: right;vertical-align: top;">问题选项:</td>
				<td width="*" style="text-align: left;">
					<textarea rows="8" cols="41" name="options">${question.options }</textarea>
				</td>
			</tr>
			<tr>
				<td style="text-align: right;">是否含有"其它"选项:</td>
				<td width="*" style="text-align: left;">
					<input type="checkbox" name="other" />
				</td>
			</tr>
			<tr>
				<td style="text-align: right;">"其它"项类型:</td>
				<td width="*" style="text-align: left;">
					<input type="radio" name="otherStyle" value="0"/>无
					<input type="radio" name="otherStyle" value="1"/>文本框
					<input type="radio" name="otherStyle" value="2"/>下拉列表
				</td>
			</tr>
			<tr>
				<td style="text-align: right;vertical-align: top;">"其它"项下拉列表选项:</td>
				<td width="*" style="text-align: left;">
					<textarea rows="8" cols="41" name="otherSelectOptions">${question.otherSelectOptions }</textarea>
				</td>
			</tr>
			<tr>
				<td style="text-align: right;"></td>
				<td width="*" style="text-align: left;">
					<input type="submit" name="ok" value="确定" class="btn">
				</td>
			</tr>
		</table>
	</form>
</body>