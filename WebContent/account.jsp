<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMPLOYEE MANAGEMENT</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Didact+Gothic" rel="stylesheet" />
<link href="bootstrap/css/adminhomedefault.css" rel="stylesheet" type="text/css" media="all" />
<link href="bootstrap/css/adminhomefonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

</head>
<body>


<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><a href="#">ACCOUNT MANAGEMENT</a></h1>
		</div>
		<div id="menu">
			<ul>
				<li class="active"><a href="#" accesskey="1" title="">Homepage</a></li>
				<li><a href="#" accesskey="2" title="">Our Clients</a></li>
				<li><a href="#" accesskey="3" title="">About Us</a></li>
				<li><a href="#" accesskey="4" title="">Careers</a></li>
				<li><a href="#" accesskey="5" title="">Contact Us</a></li>
			</ul>
		</div>
	</div>
	<div id="banner" class="container">
	<h2> Generate Balance Sheet </h2>
	<form action="lgn">
		<table align="center" border=1>
			<tr>
			
				<td>Select Year</td>
				<td>
					<select name="year">
						<option>-select Year-</option>
						<option>2008-2009</option>
						<option>2009-2010</option>
						<option>2010-2011</option>
						<option>2011-2012</option>
						<option>2012-2013</option>
						<option>2013-2014</option>
						<option>2014-2015</option>
						<option>2015-2016</option>
						<option></option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="submit" value="submit"></td>
			</tr>
		</table>
	</form>
	</div>
</div>

	
</body>
</html>