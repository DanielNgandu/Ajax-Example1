<?php
include("connection.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>AJAX Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <!-- Offline resources -->
    <link rel="stylesheet" href="../vendors/bootstrap4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script>
  $(document).ready(function() {
      $("#select_province").click(function() {
          var province_id = $(this).val();
          if(province_id){

            $.ajax( {
                url: "load_cities.php",
                type: "post",
                data: { province_id : province_id },
                success: function(html) {
                //console.log(html);
           $('#select_city').html(html);
                }
            });
          }

      });
  });
  </script>
</head>
<body>

<div class="container">
  <h2>Simple Form</h2>
  <form role="form" action="" >
    <div class="form-group">
      <label for="province">Select Province</label>
        <select class="form-control" id="select_province" name="province" required>
      <?php
      $sql = "SELECT *  FROM provinces ";
      if ($result = $conn->query($sql)) {

        while ($row = $result->fetch_assoc()){
          $id = $row["id"];
          $province_name = $row["province_name"];
          echo "<option value=".$id.">".$province_name."</option>";
        }
      }
      ?>
    </select>
    </div>
    <div class="form-group">
      <label for="email">Select City</label>
      <select class="form-control" id="select_city" name="city" required>

      </select>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>

<!-- Mirrored from www.w3schools.com/bootstrap/tryit.asp?filename=trybs_form_basic&stacked=h by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 19 Jan 2016 12:45:35 GMT -->
</html>
