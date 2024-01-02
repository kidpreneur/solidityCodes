pragma solidity >= 0.7.0 < 0.9.0;

contract myLoopingPracticeContract {

    uint [] public longList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20];
    uint [] public numbersList = [1, 4, 34, 56];

    function valueAvailabilityChecker(uint _number) public view returns(bool) {
        uint count = 0;
        for(uint i = 1; i < numbersList.length; i++){
            if(numbersList[i] == _number){
                count++;
                return true;
            }        
        }   
        return false;     
    }

    function evenNumbersCheckerLoop() public view returns(uint) {
        uint count = 0;
        for(uint i = 1; i < longList.length; i++){
            if(longList[i] % 2 == 0){//this is simply saying if the loop above goes through longList
//beginning from the initialized digit (i) and finds a number fully divisible by 2, then 
                count++; //this should take the count. Then the loop resumes again to the next (i) and if the even numebr
// condition is met again, count++ should simply increment the count till we have the last even number in the list counted
            }
        }
        return count;
    }
}



     
