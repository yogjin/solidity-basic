// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// constructor: 변수의 값을 초기화할 때 사용
// 스마트 컨트랙이 배포될 때, 인스턴스화 될 때, 초기 변수의 파라미터를 받고 컨트랙이 생성된다
contract Person {
  string public name;
  uint256 public age;

  constructor(string memory _name, uint256 _age) {
    name = _name;
    age = _age;
  }

  function change(string memory _name, uint256 _age) public{
    name = _name;
    age = _age;
  }
}

contract B {
  // 인스턴스화: 가스소비 높다. 
  // 한 블록당 가스 소비량이 제한(보안때문에)되어 있기 때문에, 배포불가능할 수 있다.클론 팩토리 패턴을 이용한다.
  Person p1 = new Person("youngjin", 25);

  function change(string memory _name, uint256 _age) public {
    p1.change(_name, _age);
  }

  function get() public view returns (string memory, uint256) {
    return (p1.name(), p1.age());
  }
}