pragma solidity >=0.4.22 <0.7.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/DBFcoin.sol";

contract TestDBFcoin {

  function testInitialBalanceUsingDeployedContract() public {
    DBFcoin dbf = DBFcoin(DeployedAddresses.DBFcoin());

    uint expected = 10000;

    Assert.equal(dbf.getBalance(tx.origin), expected, "Owner should have 10000 DBFcoin initially");
  }

  function testInitialBalanceWithNewDBFcoin() public {
    DBFcoin dbf = new DBFcoin();

    uint expected = 10000;

    Assert.equal(dbf.getBalance(tx.origin), expected, "Owner should have 10000 DBFcoin initially");
  }

}
