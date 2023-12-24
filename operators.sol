pragma solidity >= 0.7.0 < 0.9.0;

contract comparisonOperators {
    uint a = 4;
    uint b = 6;

    function compare() public view {
        require (a < b, 'That is false'); //the 'require' statement is used to check
    // if a condition in the code is; if not, it will stop and go back, displaying
    // the error message in this context - "That is false". However, in this statement,
// 'a' is indeed less than 'b'. 
    }  

    function compare2() public view {
        require (a > b, 'This is false!');
    }

    function compare3() public view {
        require (a == b, 'This is false!');
    }
}  

contract comparisonOperators2 {
    uint a = 6;
    uint b = 6;

    function compare() public view {
        require (a == b, 'This is false');
    }

    function compare2() public view {
        require (a != b, 'This is false!');
    }
}

contract comparisonOperators3 {
    uint a = 323;
    uint b = 54;

    function compare() public view {
        require (a <= b, 'This comparison is false!');
    }
}

// LOGICAL OPERATORS
// logical operators: && (logical AND), || (logical OR),
// ! (logical NOT)
//Bitwise Operators: & (Bitwise AND), | (Bitwise OR), ^ (Bitwise XOR
contract logicalOperators {
    uint a = 4;
    uint b = 5;

    function logic() public view returns(uint) {
        uint result = 0; //this says the function is instantiating the result to be 0
        if (a < b && a == 4) { //but if these highlighted conditions are true, then... 
            result = a + b; //let the result be "a + b"
        }
        return result; //once the conditional statement is true up to this point, then "return"
    }//the result here is "9' because the condition is true. Hence it does not revert to result as zero

    function logic2() public view returns(uint) {
        uint result = 0; 
        if (a < b && a == 5) { //if these highlighted conditions are true, then...
            result = a + b; //let the result be "a + b"
        }
        return result; //once the conditional statement is true up to this point, then "return" 
    }// the condition is not true that "a" is equal to 5, even though it is less than "b"
    //hence, the function reverts to result as zero.

    function logic3() public view returns (uint) {
        uint result = 0;
        if (a < b || a == 5) {//this statement seeks to know if "a" is less than "b" OR is equal to 5
            result = a + b;//once the condition is either a < b OR a is equal to 5, then we can add a + b
        }
        return result; //then return the result 
    }//given that at least one of the conditions above is true, when we do call the function, we get 9. 
}

//LOGICAL OPERATORS - Exercise
// 1. Create a function, which will multiply "a" by "b" and divide the result by "b"
// 2. Only return the multiplication of the function if "b" is greater than "a" AND "a" does not eequal "b"
//3. Initialize "a" = 17, and "b" to 32

contract logicalOperatorsExercise {
    uint a = 17;
    uint b = 32;

    function logic() public view returns (uint) {
        uint result = (a * b) / b; 
        if ( b > a && a != b) {// if "b" is greater than "a" AND is not equal to b...
            result = a * b; //then let the result be the product of "a" and "b"
        }
        return result; //when we do return the result, we get 544, which is the product a * b
    }//this is because the condition is true, otherwise, the function would have reverted to return the instantiated result
    //(a * b) / b

//What if we write "b" in the function to be less than "a"?
    function logic2() public view returns (uint) {
        uint result = (a * b) / b; 
        if (b < a && a != b) {// if "b" is less than "a" AND a is not equal to b... 
            result = a * b; //then let the result be the product of "a" and "b"
        }
        return result; //when we do return the result, we get 17, which is not a * b
    //this is because the condition is not entirely true; "b" is not less than "a". 
    //So, the function reverts to return the instantiated result = (a * b) / b 
    }
}
