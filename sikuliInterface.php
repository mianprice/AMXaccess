<?php 
	$cmd = "C:\SikuliX\runIDE.cmd -r \sikuli\start.sikuli -c";
	
	$temp = shell_exec($cmd);
	echo $temp;

?>