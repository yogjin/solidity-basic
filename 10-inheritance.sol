// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract Father {
  string public familyName = "Kim";
  string public givenName = "ho";
  uint256 money = 1000;

  constructor(string memory _givenName) {
    givenName = _givenName;
  }

  function getMoney() public view virtual returns(uint256){
    return money;
  }
}

contract Son is Father {
  // 상속할 Contract에 constcutor가 있는 경우 
  // contract Son is Father("jin") 
  constructor() Father("jin") {}

  // 아들이 일해서 번 돈
  uint256 public earning = 0;

  function work() public {
    earning += 100;
  }
  // Overring function
  function getMoney() public view override returns(uint256) {
    return money + earning;
  }
}