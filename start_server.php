<?php
$server_type = $_GET['server_type'];

if ($server_type == 'ib') {
    exec('sh servers/run_ib_server.sh');
} elseif ($server_type == 'group_convo') {
    exec('sh servers/run_group_convo_server.sh');
} elseif ($server_type == 'post') {
    exec('sh servers/run_post_server.sh');
}

header("Location: index.html");
?>
