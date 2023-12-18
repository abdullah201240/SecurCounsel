<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

$host = 'localhost';
$username = 'root';
$password = '';
$database = 'counselling';

$backupPath = 'C:\\xampp\\htdocs\\UIU\\backup\\';

$backupFilename = 'backup_' . date('Y-m-d_H-i-s') . '.sql';

$mysqldumpPath = 'C:\\xampp\\mysql\\bin\\mysqldump';

$command = "$mysqldumpPath --host=$host --user=$username --password=$password $database > $backupPath$backupFilename 2>&1";

exec($command, $output, $returnCode);

if ($returnCode === 0) {
    header("Location:index.php");
    echo "Database backup successful. Backup saved to: $backupPath$backupFilename";
} else {
    echo "Error: Database backup failed. Error Code: $returnCode\n";
    echo "Check the error message: " . implode("\n", $output);
}
?>
