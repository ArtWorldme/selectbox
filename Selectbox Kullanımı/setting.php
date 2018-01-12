<?php

	
	if($connect = mysql_connect("localhost","root","")){
		if(!mysql_select_db("il_ilce",$connect)){
			die("Database Fail !");
		}
	}else{
		die("Mysql Fail !");
	}
	
	
	mysql_query("SET NAMES UTF8");
	mysql_query("SET CHARACTER SET utf8");
	mysql_query("SET COLLATION_CONNECTION='utf8_turkish_ci'");