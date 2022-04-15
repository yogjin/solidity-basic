// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract Function3 {
  // 규칙 1
  // 상태(state) 변수는 항상 storage에 저장된다.
  
  // storage
  uint public stateVariable = 10;
  uint public stateVariable2 = 20;
  uint[] public stateArray = [1,2];
  uint[] public stateArray2 = [3,4];

  // 명시적으로 정의할 수 없다.
  // uint storage stateVariable; // error
  // uint memory stateVariable // error
    
  // 규칙 2
  // function parameter 와 return parameter는 memory에 저장된다.
  function caculation(uint num1, uint num2) public pure returns(uint) {
    return num1 + num2;
  }

  // 규칙 3
  // 지역변수
  // value 타입은 memory에 저장, reference 타입은 따로 명시해야한다.
  function doSomething() public pure{
    // value type -> memory에 저장, 명시할 수 없다.
    bool flag;
    uint num;
    address acc;

    // reference type -> memory or storage 명시
    uint[] memory localArray;
  }

  // 규칙 4
  // external function의 parameter는 calldata에 저장된다. (return parameter 제외)

  // 규칙 5
  // 상태변수를 다른 상태변수에 할당하면 새 복사본으로 할당한다.
  // value, reference type 모두 해당된다.
  function assignment1() public returns(uint[] memory) {
    stateArray = stateArray2; // [3,4]
    stateArray = [10,20];
    return stateArray2; // [3,4]
  }

  // 규칙 6
  // 메모리 변수를 상태변수에 할당하면 복사본으로 할당한다.
  // 반대로 상태변수를 메모리 변수에 할당해도 복사본으로 할당한다.
  function assignment2() public returns(uint) {
    uint local = 1;
    stateVariable = local;
    local = 100;
    return stateVariable; // 10
  }

  // 규칙 7
  // 메모리 변수 <- 메모리변수의 할당은 변수 타입에 따라 다르다.
  // value type: 복사본으로 할당
  // reference type: 주소값으로 할당.
  function assignment3() public pure returns(bytes32[] memory, bytes32[] memory) {
    bytes32[] memory str = new bytes32[](1);
    str[0] = "test";
    bytes32[] memory str2 = new bytes32[](1);
    str = str2;
    str2[0] = "changed";
    return (str,str2);
  }
}