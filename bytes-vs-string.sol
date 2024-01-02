pragma solidity >= 0.7.0 < 0.9.0;

contract learnstrings{

    string greetings = 'Hello World'; //'Hello' is the string literal; 'greetings' is the name of th string
    //and string is the data type.

// now that we have this string contract, let' see what we can actually do with it in our contract
//Let's a create a function that returns our string


    function sayHello() public view returns(string memory) {//the reason we have "memory" alongside string in the returns
//is because we can't just return a string in solidity because the string has to be stored somewhere. A string has to be stored
//In order to do that, we need to tell solidity to store our string to a memory
        return greetings; //when we call this function, it returns 'Hello' as the value of the variable greetings. 
    } 


//BYTES vs STRINGS IN SOLIDITY
//what if we want to change the value of our greetings with another function?

    function changeGreeting(string memory _change) public {// what we want is for the _change input to change the greeting
        greetings = _change; //what this has done is that we have assigned the function changeGreeting to sayHello, so that when we
//compile, deploy and call it, whatever the user inputs in _change of the new function changeGreeting, it becomes the new value
    }

//sometimes, we want to manipulate the strings, or, let's assume we want to get access to know how many characters are within the string. How do we do this
//First, you should know that strings in solidity are too expensive computationally, to get through their entire length
    function getChar() public view returns(uint){
//we then write underneath this function the code that will get through the entire length of the characters in the string by converting 
//the strings to bytes to save computational expenses - gas fee. That is, we convert our 'Hello' strings to bytes. 
        bytes memory stringToBytes = bytes(greetings);//why in essence are we using bytes? Bytes are the basic unit of measurement 
//in computer processing. So instead of registering characters in the string format, bytes go to the basic byte size of the string and convert it to bytes
    return stringToBytes.length;//then here it returns the length of the converted string.

    } 
}

//EXERCISE - WRITING STRINGS IN SOLIDITY
//1. Create a string called favoriteColor
//2. set the favorite color to blue
//3. Create a function, which returns the string literal of favoritecolor
//4. Create a function, which changes the favoriteColor string literal from blue to your favorite color.
//5. Create a function, which can return how many characters there are in the string favorite color.

contract stringsAndBytesExercise{

    string favoriteColor = 'blue';

    function colorIdentifier() public view returns(string memory){
        return favoriteColor;
    }


    function changeColorIdentifier(string memory _change2) public{
        favoriteColor = _change2;
    }

    function getChar() public view returns(uint){
        bytes memory stringToBytes = bytes(favoriteColor);
        return stringToBytes.length;
    }
        
}
