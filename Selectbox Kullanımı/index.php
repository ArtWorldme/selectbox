<?php 
include("setting.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>İl İlçe Uygulaması</title>
	<script type="text/javascript" src="js/jquery-1.6.4.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){

			$("#sehir option").click(function(){
				
				var id = $(this).attr("id");
				var gonderilenler = "id="+id;

				$.ajax({
					type:"POST",
					data:gonderilenler,
					url:"ilceGetir.php",
					success:function(deger){
							$("#ilce").html(deger);
						}

					});
				
				
			});
			
		});
	</script>
</head>
<body>

<div class='deneme'></div>

<form action="" name="form1">

	<select id="sehir">
		<?php 
			$qry = mysql_query("SELECT * FROM iller");
				while($w=mysql_fetch_assoc($qry)){
					echo "<option id='".$w["id"]."'>".$w["ilAdi"]."</option>";
				}
		?>
	</select>
	
	<select id="ilce">
		<option>Bir Şehir Seçin</option>
	</select>

</form>




</body>
</html>