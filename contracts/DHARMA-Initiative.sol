// 1SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
      
contract Vault1 {
  address public owner = msg.sender;
  uint public last_completed_migration;

  modifier restricted() {
    require(
      msg.sender == owner,
      "This function is restricted to the contract's owner"
    );
    _;
  }

// Detonation statues. 
enum detonationstates {Unarmed, Armed, Disarmed, Detonated}


  struct Item {
    uint secretid;
    string ipfsaddress;
    string safeword;
    uint detonationtimer;
    address payable owner;
  }

mapping(uint => Item ) public Items;



// This function store the ipfs location of the encrypted file  s
  function updateipfslocation(uint secretid, string ipfsaddress) public  {
  }

// This function store the 'safeword' to difuse the contract 
function updatesafeword(uint secretid, string safeword) public  {
  }

// This function store the detonation timer in seconds
function updatedetonationtimer(uint secretid, uint detonationtimer) public {
  }
 
 //This function read the current detonation set and compare to signiture date . should call detonate if timer is longer then last signiture date
function detonatiotimerstatus(uint secretid) public returns (string) {
  }

//Owner of the item sign on his wallet to 'reset' the detonation timer
function resetdetonationtimer(uint secretid) public returns (string)  {
  }

}

//Owner of the item defused the item
function defuseitem(uint secretid, string safeword) public returns (string)  {
  }

}


//This function detonate 
function detonateitem(uint secretid) private  {
  }




}
