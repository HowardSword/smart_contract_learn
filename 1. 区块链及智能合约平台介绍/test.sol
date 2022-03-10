/*
⼀个简单的计数器
Counter：合约状态变量，保存在链上
count(): 合约函数
*/
pragma solidity ^0.8.0;
contract Counter {
    uint public counter;
    uint public sum;

    constructor() {
        counter = 0;
        sum = 0;
    }

    function add(uint256 x) public {
        counter = counter + x;
    }

    function set(uint256 x) public {
        counter = x;
    }

    function summer(uint256 x) public {
        sum = sum + x;
    }
 
}

