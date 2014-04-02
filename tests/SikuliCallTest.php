<?php


require_once('SikuliCall.php');

class SikuliCallTest extends PHPUnit_Framework_TestCase{
	/*
	@dataProvider providerValid
	*/
	public function testSikuliFindValid($pathToFile){
		
		$actualNum = callSikuliFinder($pathToFile);
		$expectedNum = 1 ;
		$this->assertEquals($actual, $expected);
	}
	/*
	@dataProvider providerInvalid
	*/
	public function testSikuliFindInvalid($pathToFile){
		$actualNum = callSikuliFinder($pathToFile);
		$expectedNum = 0 ;
		$this->assertEquals($actual, $expected);
	}
	
	public function providerValid(){
		return array("C:\wamp\www\AMX\SN011\projector");
	}
	
	public function providerInvalid(){
		return array("C:\wamp\www\AMX\SN011\discoBall");
	}


}


?>