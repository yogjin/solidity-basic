// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract Function3 {
  /*
   * solidity는 4가지 영역으로 나뉜다.
   * storage: 대부분의 변수, 함수들이 저장되며, 영구적으로 저장이 되어 가스 비용이 비싸다.
   * memory: 함수의 파라미터, 리턴값, 레퍼런스 타입이 저장된다.
   *         그러나 storage 처럼 영구적이지 않고 함수 내에서만 유효하기 때문에 가스비용이 싸다.
   * calldata: external function의 파라미터에서 사용된다.
   * stack: EVM(Etehreum Virtual Machine)에서 stack data를 관리할 때 쓰는 영역: 1024Mb으로 제한.
   */

  // function -string.
  function get_string(string memory _str) public pure returns(string memory) {
    return _str;
  }

  function get_uint(uint256 _ui) public pure returns(uint256) {
    return _ui;
  }
}
