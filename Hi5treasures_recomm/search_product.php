<?php
include('includes/connect.php');
include('navbar.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Product</title>
    <style>
         img{
      opacity: 0.8;
    }

img:hover {
  opacity: 1;
  transition: all 0.4s;
    padding: .5rem;
}
a.bi-heart-fill:visited{
  color: red;
}


</style>
</head>
<body>
    
</body>
</html>
            <?php
            if (isset($_GET['search_data_product'])) {
                $search = test($_GET['search_data']);
            }
            function test($data) {
                $data = trim($data);
                $data = stripslashes($data);
                $data = htmlspecialchars($data);
                return $data;
            }
            search_product();
            
            
            ?>