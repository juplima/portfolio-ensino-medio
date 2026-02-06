<?php

// 1️⃣ Conectar ao banco
$servername = "localhost";
$username = "root"; 
$password = ""; 
$dbname = "portfolio";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexão
if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

// 2️⃣ Receber dados
$nome = $_POST['nome'];
$email = $_POST['email'];
$assunto = $_POST['assunto'];
$mensagem = $_POST['mensagem'];
$contato = $_POST['contato'];
$telefone = $_POST['telefone'];

// 3️⃣ Inserir no banco
$sql = "INSERT INTO contatos (nome, email, assunto, mensagem, contato, telefone)
        VALUES ('$nome', '$email', '$assunto', '$mensagem', '$contato', '$telefone')";

if ($conn->query($sql) === TRUE) {
    echo "
    <script>
        alert('Mensagem enviada com sucesso!');
        window.location.href = 'contato.html';
    </script>
    ";
} else {
    echo 'Erro ao enviar: ' . $conn->error;
}

$conn->close();
?>
