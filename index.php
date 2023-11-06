<?php include "header.php";
$hostname = 'localhost';
$username = 'root';
$password = '';
$database = 'appm6pfiles';
$mysqli = new mysqli($hostname, $username, $password, $database);
?>

<!-- HEADER -->

<!-- MAIN -->
<main role="main">
  <!-- TOP SECTION -->
  <?php
  $sql = "SELECT * FROM orders";
  $myOrders = $mysqli->query($sql);
  ?>
<h2>Total Number of Orders by Each Customer</h2>
  <table>
    <tr>
      <th>Order ID</th>
      <th>Order Date</th>
    </tr>
    <?php
    while ($row = $myOrders->fetch_assoc()) {
      ?>
      <tr>
        <td>
          <?php echo $row['order_id']; ?>
        </td>
        <td>
          <?php echo $row['order_date']; ?>
        </td>
      </tr>
    <?php } ?>
  </table>

  <!-- SECTION 1 -->
  <section class="grid margin text-center">
  </section>
</main>
<?php include "footer.php"; ?>