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
  $sql = "SELECT customers.cust_id, customers.first_name, customers.last_name, customers.email, customers.location, COUNT(*) as total_orders FROM orders JOIN customers ON customers.cust_id=orders.customer_id GROUP BY customers.cust_id;";
  $totalOrders = $mysqli->query($sql);
  ?>
  
<h3>Total Number of Orders by Each Customer</h3>
  <table>
    <tr>
      <th>Customer's ID</th>
      <th>Name</th>
      <th>Email Address</th>
      <th>Location</th>
      <th>Total Orders</th>
    </tr>
    <?php
    while ($row = $totalOrders->fetch_assoc()) {
      ?>
      <tr>
        <td>
          <?php echo $row['cust_id']; ?>
        </td>
        <td>
          <?php echo $row['first_name']." ".$row['last_name']; ?>
        </td>
        <td>
          <?php echo $row['email']; ?>
        </td>
        <td>
        <?php echo $row['location']; ?>
        </td>
        <td>
          <?php echo $row['total_orders']; ?>
        </td>
      </tr>
    <?php } ?>
  </table>

  <!-- SECTION 1 -->
  <section class="grid margin text-center">
  </section>
</main>
<hr/>
<?php include "footer.php"; ?>