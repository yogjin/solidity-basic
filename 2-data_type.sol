// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract DataType {
  // boolean: true | false 
  bool public a = true && false; // false

  // bytes 1 ~ 32
  bytes4 public bt = 0x12345678;
  bytes public bt2 = "STRING"; // 크기 자동할당 // 0x535452494e47
  
  // address : 지갑, 컨트랙트 주소 (20bytes)
  address public addr = 0x1234567890123456789012345678901234567890;

  // int(-,+) vs uint (+)
  // uint256 : 0 ~ 2^256 - 1
  int256 public integer = -100;
  uint256 public uinteger = 100;
}