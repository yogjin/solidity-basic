// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract Function3 {
  // view: function 밖의 변수를 읽을 수 있지만 변경이 불가능 할 때 사용
  // pure: function 밖의 변수를 읽지 못하고, 변경도 불가능
  // view 와 pure 둘다 명시 안할때: function 밖의 변수들을 읽어서, 변경을 하는경우

  // 1. view
  // function 밖의 변수를 읽을 수 있지만, 변경은 불가능
  uint256 public a = 1;
  function read_a() public view returns(uint256) {
    return a+2; // 단순히 읽어오고 더해서 리턴
  }

  // 2. pure
  // 내부 코드로만 동작
  function read_a2() public pure returns(uint256) {
    uint256 b = 1;
    return 4+2+b;
  }

  // 3. pure, view X
  function read_a3() public returns(uint256) {
    a = 10;
    return a+2;
  }
}