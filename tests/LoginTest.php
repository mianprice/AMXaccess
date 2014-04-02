<?php

require_once('Login.php');

class LoginTest extends PHPUnit_Framework_TestCase{
	/*
	@dataProvider provider
	*/
	public function testLogin($login, $password){
		
		$actual = login($login, $password);
		$expected = true;
		$this->assertEquals($actual, $expected);
	}
	
	public function provider(){
		return array("Comp523","learn");
	}

}