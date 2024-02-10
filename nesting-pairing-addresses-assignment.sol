pragma solidity >= 0.7.0 < 0.9.0;

//Pairing Addresses Assignment

/*Nested mapping can provide many powerful solutions when it comes to working with addresses in Solidity.

It is time to put your new knowledge to the test.

Observe the following contract which has functionality to remove a spender address paired with an owner address:
*/

 
contract allowancePairingAddress {

    mapping (address => mapping (address => uint)) public allowance;//Nested mapping to pair address
 
    function setAddress(address _addrOwner, address _addrSpender, uint _i) public{
        allowance [_addrOwner] [_addrSpender] = _i;
    }
//"address" defines _addr as key; uint defines "_i" as the index value that we'e going to put in 
//We're simply saying whatever address we set here in the array of allowance, we set it up to receive the index value of _i
//that we're going to input

    function getAddress(address _addrOwner, address _addrSpender) public view returns(uint){
        return address[_addrOwner] [_addrSpender];
    }
 
    //this function removes the spenders allowance
    function remove(address _addrOwner, address _addrSpender) public {
        delete allowance[_addrOwner] [_addrSpender];
    }

//Your assignment is to build out the rest of the contract functionality. 

//Create a Contract, using nested mapping, to pair two contract addresses together (an address owner and an address spender) 
//with a value of integers to keep track of their index.

//Once you have successfully set up the map, add additional contract functionality so that the contract can pair up new addresses together (owner and spender) 
//as well as retrieve their mapping value.
}
