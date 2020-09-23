<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type = "text/css">

body {
	margin: 0;
	padding: 0;
}

.header {
	background-color: #0F4C81;
	width: 100%;
	height: 100px;
	margin: 0 auto;
	display: flex;
	justify-content: center;
}

.header-icon {
	margin-bottom: 20px;
	padding-bottom:10px;
}

.header-icon2 {
	margin-top: 40px
}

.header h1 {
	text-align: center;
	padding-top: 10px;
	color: white;
	font-family: 'M PLUS Rounded 1c', sans-serif;
}

.main {
	height: 600px;
	width: 100%;
}

.tbl {
	padding-top: 60px;
	padding-bottom: 80px;
}

table {
	background-color: grey;
	font-size: 16px;
	margin: auto;
	border-radius: 3px;
	height: 300px;
}

input {
	background-color: #dfe1e5;
	text-align: center;
	font-size: 20px;
	font-weight: bold;
	border-radius: 3px;
	font-family: arial, sans-serif;
	padding-top: 25px;
	padding-left: 35px;
	margin-left: 5px
}

.box {
	width: 220px;
	color: navy;
	background-color: white;
	padding-right: 3px;
	margin-left: 3px;
	text-align: right;
	font-size: 20px;
	font-weight: bold;
	-webkit-appearance: none;
	margin: 0;
}

.minus {
	padding-left: 37px;
}

.bar {
	padding-left: 39px;
}

.plus {
	padding-left: 33px;
}

.equal {
	padding-left: 33px;
}

.c {
	padding-left: 33px;
}

.footer {
	display: flex;
	justify-content: center;
	margin-bottom: 20px;
}

</style>
<meta charset="UTF-8">
<title>dentaku</title>
<link
	href="https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c:wght@500&display=swap"
	rel="stylesheet">
</head>
<body>
	<div class="header">
		<div class="header-icon">
			<h1>無料電卓アプリ</h1>
		</div>
	</div>
	<div class="main">
		<div class="tbl">
			<table>
				<tr>
					<td colspan="4"><input class="box" type="text" value="0">
					</td>
				<tr>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input type="submit" value="7">
							<input type="hidden" value="7" name="inputNumFromDentaku">
						</form>
					</td>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input type="submit" value="8">
							<input type="hidden" value="8" name="inputNumFromDentaku">
						</form>
					</td>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input type="submit" value="9">
							<input type="hidden" value="9" name="inputNumFromDentaku">
						</form>
					</td>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input type="submit" value="*">
							<input type="hidden" value="*" name="inputNumFromDentaku">
						</form>
					</td>
				</tr>
				<tr>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input type="submit" value="4">
							<input type="hidden" value="4" name="inputNumFromDentaku">
						</form>
					</td>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input type="submit" value="5">
							<input type="hidden" value="5" name="inputNumFromDentaku">
						</form>
					</td>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input type="submit" value="6">
							<input type="hidden" value="6" name="inputNumFromDentaku">
						</form>
					</td>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input class="minus" type="submit" value="-">
							<input type="hidden" value="-" name="inputNumFromDentaku">
						</form>
					</td>
				</tr>
				<tr>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input type="submit" value="1">
							<input type="hidden" value="1" name="inputNumFromDentaku">
						</form>
					</td>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input type="submit" value="2">
							<input type="hidden" value="2" name="inputNumFromDentaku">
						</form>
					</td>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input type="submit" value="3">
							<input type="hidden" value="3" name="inputNumFromDentaku">
						</form>
					</td>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input class="plus" type="submit" value="+">
							<input type="hidden" value="+" name="inputNumFromDentaku">
						</form>
					</td>
				</tr>
				<tr>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input type="submit" value="0">
							<input type="hidden" value="0" name="inputNumFromDentaku">
						</form>
					</td>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input class="bar" type="submit" value="/">
							<input type="hidden" value="/" name="inputNumFromDentaku">
						</form>
					</td>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input class="c" type="submit" value="C">
							<input type="hidden" value="C" name="inputNumFromDentaku">
						</form>
					</td>
					<td>
						<form action="/easydenta9/Servlet" method="post">
							<input class="equal" type="submit" value="=">
							<input type="hidden" value="=" name="inputNumFromDentaku">
						</form>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>