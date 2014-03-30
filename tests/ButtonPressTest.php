<?php


require_once('ButtonPress.php');

class ButtonPressTest extends PHPUnit_Framework_TestCase
{
  /*
  @dataProvider provider
  */
  public function testButtonPathExistence($button, $room, $correctPath)
  {
		$buttonPath = ButtonPress.retrievePathFromDatabase($button,$room);
		$this->assertEquals($buttonPath, $correctPath);
  }
  /*
  @dataProvider nonExistentButtonProvider
  */
  public function testButtonFailureException($button,$room){
		$buttonPath = ButtonPress.retrievePathFromDatabase($button,$room);
		$this->assertEquals($buttonPath, null);
  }
  
  public function provider(){
		return array(
			array('projector','SN011', 'C:\wamp\www\AMX\@N011\projector'),
			array('dimLights','SN011','C:\wamp\www\AMX\@N011\dimLights'),
			array('screenDown','SN011','C:\wamp\www\AMX\@N011\screenDown'));
  }
  
  public function nonExistentButtonProvider(){
	return array(
		array('bigRedButton','SN011'),
		array('discoBall','SN011'));
  
  }
}
?>