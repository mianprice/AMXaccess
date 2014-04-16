<?php 
/*function async_exec_win($cmd){
	$wshShell = new COM('WScript.Shell');
	$wshShell->Run($cmd,0,false);
}*/
$cmd = "C:\\SikuliX\\runIDE.cmd -r C:\\wamp\\www\\amx\\AMXaccess\\sikuli\\start.sikuli";
$output = shell_exec($cmd);
echo $output;
#shell_exec($cmd);

#	$data = file_get_contents("php://input");
	#echo $data;

/*if(!$return){
	echo "<script type = 'text/javascript'>alert('hello2');</script>";
}
else{
	echo "<script type = 'text/javascript'>alert('hello3');</script>";
}*/

?>