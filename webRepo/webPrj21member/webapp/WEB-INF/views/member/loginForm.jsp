<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

    #wrap{
        width: 400px;

        display: grid;
        grid-template-columns: 1fr 3fr;
    }

    #wrap > div:last-child {
        grid-column: span 2;
    }

    #wrap > div {
        display: flex;
        justify-content: center;
    }

    #wrap > div:last-child > input {
        width: 60%;
    }
    

</style>
</head>
<body>

	<h1>로그인</h1>
	
    <form action="/app21/member/login" method="post">
        <div id="wrap">
            <div>아이디</div>
            <div><input type="text" name="memberId"></div>
    
            <div>비밀번호</div>
            <div><input type="password" name="memberPwd"></div>
    
            <div><input type="submit" value="로그인"></div>
        </div>
    </form>
    
</body>
</html>