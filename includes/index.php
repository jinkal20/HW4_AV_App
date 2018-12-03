<?php
include 'function.php';
if (isset($_GET['movie'])) {
    // pass the connection and the movie id to a function
    $data = get_all_data($conn, $_GET['movie']);
    echo json_encode($data);
}
else {
    // pass the connection and the movie id to a function
    $data = get_all_data($conn);
    echo json_encode($data);
}
?>