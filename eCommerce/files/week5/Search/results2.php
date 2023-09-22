<?php
require_once "mysql.php";
if(isset($_REQUEST["lookup"])){
    $products = getSearchResults($_GET['lookup']);
}
elseif(isset($_REQUEST["filter"])){
    $products = getFilterResults($_GET['filter']);
}
else{
    $products = array();

}

echo '<div class="container"><table class="table table-striped"><thead><tr><th>Product Name</th><th>Product Line</th><th>Description</th></tr></thead><tbody>';
foreach($products as $product){
    echo '<tr>
    <td>'.$product["productName"].'</td>
    <td>'.$product["productLine"].'</td>
    <td>'.$product["productDescription"].'</td>
  </tr>';    
}
echo '</tbody></table></div>';

?>