<?php
$q = intval($_GET['q']);

$con = mysqli_connect('localhost','root','','solicitudempleo');
if (!$con) {
  die('Could not connect: ' . mysqli_error($con));
}

//mysqli_select_db($con,"ajax_demo");
$sql="SELECT * FROM solicitud WHERE estado_solicitud = '".$q."' ORDER BY fecha ASC";
$result = mysqli_query($con,$sql);



echo "<table border='1'>
<tr>
<th>Nombre</th>
<th>Apellido Paterno</th>
<th>Apellido Materno</th>
<th>Fecha</th>
<th>Datos Completos</th>
</tr>";

while($row = mysqli_fetch_array($result)) {

$sql2 = "SELECT MAX( fecha ) FROM  log WHERE id_solicitud = '".$row['id_solicitud']."' ";
$ultimaFecha = mysqli_query($con,$sql2);

$ultimaFecha2 = mysqli_fetch_array($ultimaFecha);

  echo "<tr>";
  echo "<td>" . $row['nombre'] . "</td>";
  echo "<td>" . $row['paterno'] . "</td>";
  echo "<td>" . $row['materno'] . "</td>";
  echo "<td>" . $ultimaFecha2['MAX( fecha )'] . "</td>";
  echo "<td><a href="."pruebaGet.php?id=".$row['id_solicitud']."> ver mas </a></td>";
  echo "</tr>";
}
echo "</table>";

mysqli_close($con);
?>