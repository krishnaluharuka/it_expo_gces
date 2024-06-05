<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
include('../includes/connect.php');
$admin_user = $_SESSION['admin_name'];

if (!isset($admin_user)) {
    echo "<script>window.open('../users_area/user_login.php','_self')</script>";
}
if (isset($_GET['inv_no'])) {
    $inv_no = $_GET['inv_no'];
    $get_orders = "SELECT * FROM orders_pending where invoice_number='$inv_no'";
    $result = mysqli_query($con, $get_orders);
    $row_count = mysqli_num_rows($result);
    while ($row_data = mysqli_fetch_assoc($result)) {
        // $product_id = $row_data['product_id'];
        $user_id = $row_data['user_id'];
        $select_user = "Select username from user_table where user_id='$user_id'";
        $user_run = mysqli_query($con, $select_user);
        $row_user = mysqli_fetch_assoc($user_run);
        $username = $row_user['username'];

        $product_id = $row_data['product_id'];
        $select_product = mysqli_query($con, "Select * from products where product_id='$product_id'");
        $row_product = mysqli_fetch_assoc($select_product);
        $product_name = $row_product['product_title'];
        $price = $row_product['product_price'];


        $quantity = $row_data['quantity'];
    }
}



?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .bg {
            background-color: antiquewhite;
        }

        .container {
            text-align: center;
        }

        .table {
            margin: auto;
            width: 80%;
            /* Adjust the width as needed */
        }

        th,
        td {
            text-align: center;
        }
    </style>
</head>

<body>
    <h3 class="container text-center my-3">EXTRA <span class="px-4">DETAILS</span></h3>
    <div class="container mt-3">
        <div class="row">
            <div class="md-12">
                <p class="text-start">Customer Name: <?= $username; ?></p>
                <p class="text-start">Total Products: <?php echo $row_count; ?></p>
            </div>
        </div>
    </div>
    <div class="container">
        <table class="table table-bordered w-100">
            <thead class="bg">
                <?php
                if (isset($_GET['inv_no'])) {
                    $inv_no = $_GET['inv_no'];
                    $get_orders = "SELECT * FROM orders_pending where invoice_number='$inv_no'";
                    $result = mysqli_query($con, $get_orders);
                    $row_count = mysqli_num_rows($result);
                    if ($row_count == 0) {
                        echo "<tr><td colspan='4'><h2 class='text-danger'>No orders yet</h2></td></tr>";
                    } else {
                        echo "<tr>
                    <th>S.No</th>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    </tr>
                    </thead>
                    <tbody>";
                        $number = 0;
                        while ($row_data = mysqli_fetch_assoc($result)) {
                            // $product_id = $row_data['product_id'];
                            $product_id = $row_data['product_id'];
        $select_product = mysqli_query($con, "Select * from products where product_id='$product_id'");
        $row_product = mysqli_fetch_assoc($select_product);
        $product_name = $row_product['product_title'];
        $price = $row_product['product_price'];


        $quantity = $row_data['quantity'];
        $number++;
                            // echo $user_id;
                            // $image = $row_data['image'];



                            echo "<tr>
                        <td>$number</td>
                        <td>$product_name</td>
                        <td>$quantity</td>
                        <td>$price</td>
               ";
                        }
                    }
                }
                ?>
                </tbody>
        </table>
    </div>
</body>

</html>