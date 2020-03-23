<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/base.css">
<title>注文書</title>
</head>
<body>
<header>
<h1>注文書</h1>
<table>
<tr>
	<th>
		<p>西暦<input type="text" size="1" name="text">年<input type="text" size="1"" name="text">月<input type="text" size="1" name="text">日</p>
	</th>
</tr>
</table>
</header>
<main>
		<table>
		<tr>
		<th>
			<p>株式会社　XXX　XXXX　御中</p>
		</th>
		<tr>
		<th>
			<p>　　　　　　　　　　　様</p>
		</th>
		</tr>
		<tr>
		<th>
		   下記の通り、注文致します。
		</th>
		</tr>
		</table>

		<table>
		<tr>
		<th>
			注文書No.<input type="text" name="text">
		</th>
		<tr>
		<th>
			株式会社<input type="text" name="text">
		</th>
		</tr>
		<tr>
		<th>
		   TEL:<input type="text" name="text">
		</th>
		</tr>
		<tr>
		<th>
		   FAX:<input type="text" name="text">
		</th>
		</tr>
		</table>

		<table>
		<tbody><tr>
			<th>
				合計金額
			</th>
				<td>
					<input type="text" name="text">
				</td>
			</tr>
		</tbody>
		</table>
		<table border="1" width="500">
		<tr>
			<th>
			  	品番・品名
			</th>
			<th>
			  	数量
			</th>
			<th>
			  	単価
			</th>
			<th>
			  	金額
			</th>
		</tr>
		<tr>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
		</tr>
		<tr>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
		</tr>
		<tr>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
		</tr>
		<tr>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
		</tr>
		<tr>
			<th>
			  	小計
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
		</tr>
		<tr>
			<th>
			  	消費税
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
			<th>
			  	<input type="text" name="text">
			</th>
		</tr>
		</table>
		<textarea name="kanso" rows="4" cols="40">備考</textarea>
</main>
<footer>
<small>Copyright (c) XXXXX株式会社 All Rights Reserved.</small>
</footer>
</body>
</html>