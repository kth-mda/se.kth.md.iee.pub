<!DOCTYPE html>
<%--
 Copyright (c) 2011, 2012 IBM Corporation and others.

 All rights reserved. This program and the accompanying materials
 are made available under the terms of the Eclipse Public License v1.0
 and Eclipse Distribution License v. 1.0 which accompanies this distribution.
 
 The Eclipse Public License is available at http://www.eclipse.org/legal/epl-v10.html
 and the Eclipse Distribution License is available at
 http://www.eclipse.org/org/documents/edl-v10.php.
 
 Contributors:
 
    Sam Padgett		 - initial API and implementation
    Michael Fiedler	 - adapted for OSLC4J
	Jad El-khoury        - initial implementation of code generator (https://bugs.eclipse.org/bugs/show_bug.cgi?id=422448)

 This file is generated by org.eclipse.lyo.oslc4j.codegenerator
--%>

<%@page import="org.eclipse.lyo.oslc4j.core.model.ServiceProvider"%>
<%@page import="se.kth.md.it.bcm.resources.BugzillaChangeRequest"%>
<%@page import="se.kth.md.it.bcm.servlet.ServletListener"%>
<%--
Start of user code imports
--%>
<%-- 
End of user code 
--%>


<%@ page contentType="text/html" language="java" pageEncoding="UTF-8" %>

<%
	String selectionUri = (String) request.getAttribute("selectionUri");

%>
<%--
Start of user code getRequestAttributes
--%>
<%
String bugzillaUri = (String) request.getAttribute("bugzillaUri");
%>
<%--
End of user code
--%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		<title>Change Request Selection Dialog</title>
		<%-- 
Start of user code (RECOMMENDED) headStuff 
		--%>
		<link href="<%=bugzillaUri%>/skins/standard/global.css" rel="stylesheet" type="text/css">
		<link href="<%=bugzillaUri%>/skins/standard/index.css" rel="stylesheet" type="text/css">
		<link href="<%=bugzillaUri%>/skins/standard/global.css" rel="alternate stylesheet" title="Classic" type="text/css">
		<link href="<%=bugzillaUri%>/skins/standard/index.css" rel="alternate stylesheet" title="Classic" type="text/css">
		<link href="<%=bugzillaUri%>/skins/contrib/Dusk/global.css" rel="stylesheet" title="Dusk" type="text/css">
		<link href="<%=bugzillaUri%>/skins/contrib/Dusk/index.css" rel="stylesheet" title="Dusk" type="text/css">
		<link href="<%=bugzillaUri%>/skins/custom/global.css" rel="stylesheet" type="text/css">
		<link href="<%=bugzillaUri%>/skins/custom/index.css" rel="stylesheet" type="text/css">
		<link rel="shortcut icon" href="<%=bugzillaUri%>/images/favicon.ico">
		<%-- 
End of user code 
		--%>
		<script type="text/javascript" src="<%=ServletListener.getServletBase() %>/delegatedUI.js"></script>
	</head>
	<body style="padding: 10px;">
		<div id="bugzilla-body">
			<p id="searchMessage">Find a specific resource through a free-text search.</p>

			<p id="loadingMessage" style="display: none;">Pondering your search. Please stand by ...</p>

			<div>
				<input type="search" style="width: 335px" id="searchTerms" placeholder="Enter search terms" autofocus>
				<button type="button" onclick="search( '<%= selectionUri %>' )">Search</button>
			</div>

			<div style="margin-top: 5px;">
				<select id="results" size="10" style="width: 400px"></select>
			</div>

			<div style="width: 400px; margin-top: 5px;">
				<button style="float: right;" type="button"
					onclick="javascript: cancel()">Cancel</button>
				<button style="float: right;" type="button"
					onclick="javascript: select();">OK</button>
			</div>
			<div style="clear: both;"></div>
		</div>

	</body>
</html>
