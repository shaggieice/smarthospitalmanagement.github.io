<?php
session_start();
error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();

if (isset($_GET['del'])) {
    mysqli_query($con, "DELETE FROM doctors WHERE id = '" . $_GET['id'] . "'");
    $_SESSION['msg'] = "Data deleted!";
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Admin | Manage Doctors</title>
    
        <link href="https://fonts.googleapis.com/css?family=Times+New+Roman:300,400,600|Raleway:300,400,500,600,700" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
        <link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
        <link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
        <link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
        <link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
        <link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
        <link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
        <link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="assets/css/plugins.css">
        <link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />

        <style>
            body {
                font-family: 'Times New Roman', serif !important;
                background-color: #ccffcc; /
            }

            h1, h5, p {
                font-family: 'Times New Roman', serif !important;
                color: #333;
            }

            .table th, .table td {
                vertical-align: middle !important;
                font-family: 'Times New Roman', serif !important;
                font-size: 16px;
                background-color: #ccffcc; 
            }

            .mainTitle {
                color: #0056b3;
                font-weight: 600;
            }

            .breadcrumb {
                background-color: #e9ecef;
                border-radius: 0.25rem;
            }

            .btn {
                font-family: 'Times New Roman', serif !important;
                font-size: 14px;
            }

            .btn-transparent {
                color: #0056b3;
                border-color: #0056b3;
                transition: 0.3s;
            }

            .btn-transparent:hover {
                background-color: #0056b3;
                color: white;
            }

            .btn-danger {
                background-color: #ff4d4d;
                border-color: #ff4d4d;
                color: white;
                transition: 0.3s;
            }

            .btn-danger:hover {
                background-color: #e60000;
                border-color: #e60000;
            }

            .container-fullw {
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                padding: 20px;
                background-color: white;
            }
        </style>
    </head>
    <body>
        <div id="app">
            <?php include('include/sidebar.php');?>
            <div class="app-content">
                <?php include('include/header.php');?>

                <div class="main-content">
                    <div class="wrap-content container" id="container">
                    
                        <section id="page-title">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h1 class="mainTitle">Admin | Manage Doctors</h1>
                                </div>
                                <ol class="breadcrumb">
                                    <li><span>Admin</span></li>
                                    <li class="active"><span>Manage Doctors</span></li>
                                </ol>
                            </div>
                        </section>

                      
                        <div class="container-fluid container-fullw bg-white">
                            <div class="row">
                                <div class="col-md-12">
                                    <h5 class="over-title margin-bottom-15">Manage <span class="text-bold">Doctors</span></h5>
                                    <p style="color:red;">
                                        <?php echo htmlentities($_SESSION['msg']); ?>
                                        <?php echo htmlentities($_SESSION['msg'] = ""); ?>
                                    </p>
                                    <table class="table table-hover" id="sample-table-1">
                                        <thead>
                                            <tr>
                                                <th class="center">#</th>
                                                <th>Specialization</th>
                                                <th class="hidden-xs">Doctor Name</th>
                                                <th>Creation Date</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $sql = mysqli_query($con, "SELECT * FROM doctors");
                                            $cnt = 1;
                                            while ($row = mysqli_fetch_array($sql)) {
                                            ?>
                                            <tr>
                                                <td class="center"><?php echo $cnt; ?>.</td>
                                                <td class="hidden-xs"><?php echo $row['specilization']; ?></td>
                                                <td><?php echo $row['doctorName']; ?></td>
                                                <td><?php echo $row['creationDate']; ?></td>
                                                <td>
                                                    <div class="visible-md visible-lg hidden-sm hidden-xs">
                                                        <a href="edit-doctor.php?id=<?php echo $row['id']; ?>" class="btn btn-transparent btn-xs" tooltip-placement="top" tooltip="Edit">
                                                            <i class="fa fa-pencil"></i>
                                                        </a>
                                                        <a href="manage-doctors.php?id=<?php echo $row['id']; ?>&del=delete" onClick="return confirm('Are you sure you want to delete?')" class="btn btn-danger btn-xs" tooltip-placement="top" tooltip="Remove">
                                                            <i class="fa fa-times fa fa-white"></i>
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <?php
                                                $cnt = $cnt + 1;
                                            } ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php include('include/footer.php');?>
            <?php include('include/setting.php');?>
        </div>

        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/modernizr/modernizr.js"></script>
        <script src="vendor/jquery-cookie/jquery.cookie.js"></script>
        <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
        <script src="vendor/switchery/switchery.min.js"></script>
        <script src="assets/js/main.js"></script>
        <script src="assets/js/form-elements.js"></script>
        <script>
            jQuery(document).ready(function () {
                Main.init();
                FormElements.init();
            });
        </script>
    </body>
</html>
