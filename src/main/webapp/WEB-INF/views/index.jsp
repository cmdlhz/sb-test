<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<h1>User List</h1>
	<div id="rDiv">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">#</th>
					<th scope="col">이름</th>
					<th scope="col">ID</th>
					<th scope="col">credat</th>
					<th scope="col">cretim</th>
					<th scope="col">moddat</th>
					<th scope="col">modtim</th>
				</tr>
			</thead>
			<tbody id="tBody"></tbody>
		</table>
	</div>
	<button onclick="getUserList()">가져오기</button>
	<script>
		function getUserList(){
			var xhr = new XMLHttpRequest();
			xhr.open('GET', '/userinfos');
			xhr.onreadystatechange = function(){
				if(xhr.readyState == xhr.DONE && xhr.status == 200){
					var list = JSON.parse(xhr.responseText);
					var tBody = document.getElementById('tBody');
					var html = '';
					for(var user of list){
						html += '<tr>';
						html += '<td>' + user.ui_NUM + '</td>';
						html += '<td>' + user.ui_NAME + '</td>';
						html += '<td>' + user.ui_ID + '</td>';
						html += '<td>' + user.credat + '</td>';
						html += '<td>' + user.cretim + '</td>';
						html += '<td>' + user.moddat + '</td>';
						html += '<td>' + user.modtim + '</td>';
						html += '</tr>';
					}
				}
				tBody.innerHTML = html;
			}
			xhr.send();
		}
	</script>
</body>
</html>