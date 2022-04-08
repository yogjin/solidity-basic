// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract Gas_ether {
    // 1 ether = 10^9 Gwei = 10^18 wei
    // gas : 스마트 컨트랙트를 사용할때 필요한 비용, 황서에 비용이 정해져 있음

    uint256 public v1 = 1 ether;
    uint256 public v2 = 1 gwei;
    uint256 public v3 = 1 wei;
}