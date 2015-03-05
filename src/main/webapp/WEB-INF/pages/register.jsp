<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
    <!--     <link href="../css/bootstrap.css" rel="stylesheet"> -->
    <style type="text/css">
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            max-width: 300px;
            padding: 19px 29px 29px;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
        }

        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
        }

        .form-signin input[type="text"],
        .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }

    </style>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.css"
          rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jqBootstrapValidation.js"></script>
</head>
<body>
<form class="form-horizontal">
    <div class="control-group">
        <label class="control-label">Type something</label>

        <div class="controls">
            <input type="text" name="some_field"/>

            <p class="help-block"></p>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">Type it again</label>

        <div class="controls">
            <input
                    type="text"
                    data-validation-match-match="some_field"
                    name="some_other_field"
                    />

            <p class="help-block"></p>
        </div>
    </div>
</form>
<!--div class="container">
    <div class="form-signin">
        <form action="registersubmit" method="post" id="signinForm">
            <h2 class="form-signin-heading">Please sign up</h2>
            <input type="text" class="input-block-level" placeholder="Login" name="username">
            <input type="password" class="input-block-level" placeholder="Password" name="password">
            <input type="password" class="input-block-level" placeholder="Confirm password" name="confirmPassword">
            <div class="container">
                <button class="btn btn-large btn-primary" type="submit">Sign up</button>
            </div>
        </form>
    </div>
</div-->
</body>
<script>
    $(function () { $("input,select,textarea").not("[type=submit]").jqBootstrapValidation(); } );
</script>
</html>
