<?php

require_once('RemoteConnectDB.php');

class RemoteConnectTest extends PHPUnit_Framework_TestCase
{
  public function setUp(){ }
  public function tearDown(){ }

  public function testConnectionIsValid()
  {
    // test to ensure that the object from an fsockopen is valid
    $connObj = new RemoteConnectDB();
    $serverName = 'www.cs.unc.edu/AMXDB';
    $this->assertTrue($connObj->connectToServerDB($serverName) !== false);
  }
}
?>