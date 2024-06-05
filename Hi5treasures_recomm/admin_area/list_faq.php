<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
$admin_user = $_SESSION['admin_name'];

if (!isset($admin_user)) {
    echo "<script>window.open('../users_area/user_login.php','_self')</script>";
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css" />-->
    <style> 
        .bg {
            background-color: antiquewhite;
        }
    </style>
</head>

<body>
    <h3 class="text-center my-5">VIEW <span class="px-3">FAQ</span></h3>
    <table id="myTable" class="table table-bordered border border-dark text-start">
        <thead class="bg border-dark">
            <tr>
                <th>Question</th>
                <th>Answer</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $get_faq = "Select * from faq";
            $result = mysqli_query($con, $get_faq);
            while ($row = mysqli_fetch_assoc($result)) {
                $f_id=$row['f_id'];
                $question=$row['question'];
                $answers=$row['answers'];
                echo "<tr>
                <td class='border border-dark'>$question</td>
                <td class='border border-dark'>$answers</td>
                <td class='border border-dark'><a href='index.php?edit_faq=$f_id' class='text-dark'>
                    <i class='bi bi-box-arrow-in-down-left'></i></a>
                </td>
                <td class='border border-dark'>
                <a href='index.php?delete_faq=$f_id' type='button' 
                class='text-dark' data-bs-toggle='modal' data-bs-target='#Modal_$f_id'>
                        <i class='bi bi-trash'></i></a>
                </td>
            </tr>";
                echo "<div class='modal fade' id='Modal_$f_id' tabindex='-1' aria-labelledby='exampleModalLabel' aria-hidden='true'>
            <div class='modal-dialog'>
                <div class='modal-content'>
                    <div class='modal-header'>
    
                    </div>
                    <div class='modal-body'>
                        <h5 class='modal-title' id='exampleModalLabel'>Are you sure you want to delete this?</h5>
                    </div>
                    <div class='modal-footer'>
                        <button type='button' class='mbtn1' data-bs-dismiss='modal'><a href='./index.php?list_faq' class='text-light text-decoration-none'>No</a></button>
                        <button type='button' class='mbtn1'><a href='index.php?delete_faq=$f_id' class='text-light text-decoration-none'>Yes</a></button>
                    </div>
                </div>
            </div>
        </div>";
            }


            ?>

        </tbody>
    </table>
    <!-- <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <script>
  $(document).ready( function () {
    $('#myTable').DataTable();
  });
</script> -->
<?php include('page.php'); ?>
</body>

</html>