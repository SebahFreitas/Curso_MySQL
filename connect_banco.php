<?PHP

// Arquivo de conexão com o banco.

$host = "localhost";
$user = "root";
$pass = "0567";
$dbname = "db_curso";


$link = mysqli_connect($host, $user, $pass , $dbname)

if $link 
{
    echo "conexao ok";
} 
else 
{ 
    echo "conexao deu erro";
}

?>



