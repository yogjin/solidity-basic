// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract Function2 {
    /*
    function 이름() public { // 함수의 접근 제어자: { public, private, internal, external } 
        // 로직
    }
    */

    // 1. public
    // 어디서든 접근이 가능함.
    uint256 public publicA = 5;
    function publicFunction() public pure returns (bytes32) {
        bytes32 a = "publicFunction";
        return a;
    }
    // 2. private
    // private이 정의된 컨트랙트 내부에서만 접근가능함.
    // 상속받은 자식 컨트랙트에서는 접근불가능
    uint256 private privateA = 5;
    function privateFunction() private {

    }

    // 3. external
    // 오직 밖에서만 접근가능함. 정의된 컨트랙트 내부에서는 사용 불가능
    // uint256 external externalA = 1; -> 사용불가능
    function externalFunction() external {

    }

    // 4. internal
    // internal이 정의된 컨트랙트 내부에 접근가능, 
    // 상속받은 자식 컨트랙트에서도 접근가능
    uint256 internal internalA = 5;
    function internalFunction() internal {

    }
}

contract MyContract {
    uint256 public a = 1;
    
    function changeA(uint256 _value) public {
        a = _value;
    }

    function getA() public view returns (uint256) {
        return a;
    }
}

contract MyContract2 {
    // MyContract 인스턴스 생성
    MyContract mc = new MyContract();

    function changeA(uint256 _value) public {
        mc.changeA(_value);
    }

    function getA() public view returns (uint256) {
        return mc.getA();
    }
}