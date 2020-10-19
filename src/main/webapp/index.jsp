<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dentaku</title>
<link
	href="https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c:wght@500&display=swap"
	rel="stylesheet">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<link href="./css/dentaku.css" rel="stylesheet">
</head>
<body>
<script>
	//ajaxの非同期処理
	$(function(){
      // ボタンが押された際の処理
      $('.btn').on('click',function(){
        $.ajax({
          url: "Servlet",
          type: "GET",
          data: {num : this.value}
        }).done(function (result) {
          // 通信成功時のコールバック
          $("#result").val(result);
        }).fail(function () {
          // 通信失敗時のコールバック
          alert("読み込み失敗");
        }).always(function (result) {
          // 常に実行する処理
        });
      });
    });
</script>
	<div class="header">
		<div class="header-icon">
			<h1>無料電卓アプリ</h1>
		</div>
	</div>
	<div class="main">
		<div class="tbl">
			<table>
				<tr>
					<td colspan="4"><input class="box" type="text" value="0" id="result"></td><tr> <!--表示部分 -->
					<td><input class="btn" type="button" value="7"></td> <!--ボタン7 -->
					<td><input class="btn" type="button" value="8"></td> <!--ボタン8 -->
					<td><input class="btn" type="button" value="9"></td> <!--ボタン9 -->
					<td><input class="btn" type="button" value="*"></td> <!--ボタン* -->
				</tr>
				<tr>
					<td><input class="btn" type="button" value="4"></td> <!--ボタン4 -->
					<td><input class="btn" type="button" value="5"></td> <!--ボタン5 -->
					<td><input class="btn" type="button" value="6"></td> <!--ボタン6 -->
					<td><input class="btn minus" type="button" value="-"> </td><!--ボタン- -->
				</tr>
				<tr>
					<td><input class="btn" type="button" value="1"></td> <!--ボタン1 -->
					<td><input class="btn" type="button" value="2"></td> <!--ボタン2 -->
					<td><input class="btn" type="button" value="3"></td> <!--ボタン3 -->
					<td><input class="btn plus" type="button"  value="+"></td> <!--ボタン+ -->
				</tr>
				<tr><td><input class="btn" type="button" value="0"></td> <!--ボタン0 -->
					<td><input class="btn bar" type="button" value="/"></td> <!--ボタン/ -->
					<td><input class="btn c" type="button" value="C"></td> <!--ボタンC -->
					<td><input class="btn equal" type="button" value="="></td> <!--ボタン= -->
				</tr>
			</table>
		</div>
	</div>
</body>
</html>