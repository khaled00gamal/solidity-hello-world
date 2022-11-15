//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

contract HelloWorld {

  event messagechanged(string oldmsg, string newmsg); //store old and new versions for debugging

  string public message;

  constructor(string memory firstmessage) { //kinda works like the main method

    message = firstmessage;

  }

  function update(string memory newmesssage) public {

    string memory oldmsg = message;

    message = newmesssage;

    emit messagechanged(oldmsg, newmesssage);

  }
}