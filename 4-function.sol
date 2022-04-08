// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract Function {

    /*
    function 이름() public { // 접근 제어자: { public, private, internal, external } 
        // 로직
    }
    */

    uint256 public i = 10;

    // 1. parameter와 retrun 값이 없는 경우
    function changeToFive() public {
        i = 5;
    }

    // 2. parameter는 있고 return 값이 없는 경우
    function changeToValue(uint256 _value) public {
        i = _value;
    }

    // 3. parameter와 return 값 둘다 있는 경우
    function changeToValueAndReturn(uint256 _value) public returns(uint256) {
        i = _value;
        return i;
    }
}