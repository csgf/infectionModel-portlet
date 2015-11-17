<%
/**
 * Copyright (c) 2000-2011 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
%>

<%@ taglib uri="http://java.sun.com/portlet_2_0"        prefix="portlet" %>

<portlet:defineObjects />

<jsp:useBean id="portletVersion" class="java.lang.String" scope="request"/>

<table>
<tr>
<td valign="top">
<img align="left" style="padding:10px 10px;" src="<%=renderRequest.getContextPath()%>/images/Repast_logo_100h.png" />
</td>
<td>
<h3>Portlet information</h3>
<pre><b>Repast submission portlet Version: <%=portletVersion%></b></pre>

<h3>Licence information</h3>
<pre>

ANY LICENCE INFORMATION

Author: [YOUR INFO]
</pre>


<form action="<portlet:actionURL portletMode="view"><portlet:param name="PortletStatus" value="ACTION_INPUT"/></portlet:actionURL>" method="post">
    <input type="submit" value="Go back">
</form>
</td>
</table>
