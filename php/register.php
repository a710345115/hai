<?php
    include('conn.php');

    $username=$_REQUEST['username'];
    $password=$_REQUEST['password'];

    $sql = "select * from userss where users_name='$username'";

    $result = $mysqli->query($sql);

    if($result->num_rows>0){
        die('用户名已存在');
    }

    $insertSql = "insert into userss(users_name,users_pwd)values('$username','$password')";

    $res = $mysqli->query($insertSql);

    if($res){
        echo '<script>alert("注册成功");location.href="../src/html/login.html";</script>';
    }

    $mysqli->close();
?>