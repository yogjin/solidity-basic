// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// B 컨트랙에서 A 컨트랙을 사용한다.
contract A {
  uint256 public a = 5;
  function change(uint256 _value) public {
    a = _value;
  }
}

contract B {
  A AContract = new A(); // A의 복사본을 만든다.

  function get_A() public view returns(uint256) {
    return AContract.a();
  }

  function change_A(uint256 _value) public {
    AContract.change(_value);
  }
}