<?php

// var_dump($_POST);
// exit();

if (
  !isset($_POST['todo']) || $_POST['todo'] == '' ||
  !isset($_POST['deadline']) || $_POST['deadline'] == ''
) {
  exit('ParamError');
}


// DB接続情報
$dbn = 'mysql:dbname=gsacf_d07_34;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';

// DB接続
try {
  $pdo = new PDO($dbn, $user, $pwd);
  // exit('ok!!');
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}


$sql = 'INSERT INTO
           todo_table(id, todo, deadline, created_at, updated_at)
           VALUES(NULL, :todo, :deadline, sysdate(), sysdate())';

$todo = $_POST['todo'];
$deadline = $_POST['deadline'];


$stmt = $pdo->prepare($sql);
$stmt->bindValue(':todo', $todo, PDO::PARAM_STR);
$stmt->bindValue(':deadline', $deadline, PDO::PARAM_STR);
$status = $stmt->execute();

if ($status == false) {
  $error = $stmt->errorInfo();
} else {
  header('Location:todo_input.php');
}
