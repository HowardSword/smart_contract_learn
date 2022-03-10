# 1. 区块链及智能合约平台介绍

1. 以太坊平台详解：智能合约平台、GAS机制等

2. 了解核⼼概念：账号及合约等、交易和消息调⽤、货币单位及
   Gas、钱包等

3. 以⼀个简单的智能合约为例，介绍合约编译、部署、测试。

4. 开发⼯具介绍 如：Remix、Hardhat、Truffle、Ganache 等

## 什么是以太坊

⼀台世界计算机（去中⼼化，任何⼈都可使⽤）

⼀个状态机（由交易触发的状态转换系统）

⼀个智能合约平台（计算平台）



## 智能合约

智能：可执⾏

合约：协议、规则

合约的组成

![image-20220310112518434](https://gitee.com/hualianhou/typora/raw/master/img/20220310112520.png)

## Solidity

Solidity(.sol)：智能合约开发语⾔

```solidity
/*
⼀个简单的计数器
Counter：合约状态变量，保存在链上
count(): 合约函数
*/
pragma solidity ^0.8.0;
contract Counter {
uint public counter;
constructor() {
counter = 0;
}
function count() public {
counter = counter + 1;
}
}
```

## Remix IDE

Remix IDE：Solidity Online IDE

https://remix.ethereum.org/

![image-20220310113046195](https://gitee.com/hualianhou/typora/raw/master/img/20220310113047.png)



## EVM

EVM：以太坊虚拟机，智能合约执⾏环境

1. 类似 Java ⾄于 JVM
2. EVM 是⼀个封闭环境（不可访问外部系统）
3. 以太坊强⼤的⽣态催⽣出来很多 EVM 兼容链: BSC , Polygon, OEC, Fantom …



## 以太坊客户端

1. 以太坊客户端：EVM 载体、⽹络中的节点程序
2. 只要符合⽹络规范，（⼏乎）任何语⾔都可以实现客户端
3. 常⻅的客户端：Geth（Go 实现）、OpenEthereum(Rust实现)
4. 通过 RPC 提供服务

## 账户

外部账户（EOA）: 由私钥控制，妥善保管、不可恢复

<img src="https://gitee.com/hualianhou/typora/raw/master/img/20220310113312.png" alt="image-20220310113311583" style="zoom:50%;" />

合约账户：代码控制

<img src="https://gitee.com/hualianhou/typora/raw/master/img/20220310113350.png" alt="image-20220310113349718" style="zoom:50%;" />

都⽤ 20 个字节表示：
0xea674fdde714fd979…

外部账户（EOA）与 合约账户在 EVM 层⾯是等效的

但是：
• 交易只能从外部账号发出，合约只能被动相应执⾏。
• 合约之间的交互通常称为消息，所有的 gas 有外部账号⽀付。



## 钱包

通常，使⽤⼀个钱包来创建账号

• Metamask 外号：⼩狐狸（插件、App）<img src="https://gitee.com/hualianhou/typora/raw/master/img/20220310113644.png" alt="image-20220310113643797" style="zoom:50%;" />

• imtoke

• TrustWallet



## GAS

EVM 的计价规则，也防⽌图灵死机问题。

GAS 是⼀个⼯作量单位，复杂度越⼤，所需 gas 越多。

费⽤ = gas 数量 * gas 单价（以太币计价gwei）



## 以太币单位

最⼩单位: Wei (伟)

```
10^9 Wei = 1 Gwei
10^12 Wei = 1 szabo (萨博)
10^15 Wei = 1 finey (芬尼)
10^18 Wei = 1 Ether


DeclarationError: Identifier already declared.
--> counter.sol:24:5:
|
24 | function sum(uint256 x) public {
| ^ (Relevant source part starts here and spans across multiple lines).
Note: The previous declaration is here:
--> counter.sol:9:5:
|
9 | uint public sum;
| ^^^^^^^^^^^^^^^
```



## 不同的⽹络

主⽹（价值⽹络）https://cn.etherscan.com/

测试⽹：https://goerli.etherscan.io/

开发模拟⽹（本地环境）



## Q & A

1. 一个已经部署的合约能删除吗？

2. 合约开发有高并发这些传统开发问题吗？

3. 能否利用gas费发起恶意攻击呢？

4. 一个已经部署的合约还能修改吗？

   合约代码不能改，合约中的变量可以通过get set方法修改。



## 练习题

```
• 安装 Metamask、并创建好账号
• 执⾏⼀次转账
• 使⽤ Remix 创建任意⼀个合约
• VSCode IDE 开发环境配置
练习题
作业要求：
1. 使⽤⾃⼰的 github 创建⼀个作业代码库
2. 每⼀次作业使⽤⼀个⽂件夹(w1)
3. 提交代码、截图、交易 hash 等
```





# 3.SOLIDITY语⾔主要特性

1. Solidity 基本类型、数组、结构体、映射
2. Solidity API 介绍
3. 合约函数、函数修改器、函数修饰符，及各类特殊函数
4. 错误处理、合约继承、接⼝、库及 Openzeppelin 合约库
5. 理解合约事件
6. 理解ABI



# 4. 智能合约及DAPP开发实战进阶

1. 最常⽤ ERC 标准介绍及实战：ERC20、ERC777、EIP2612、ERC721、ERC1155
2. Hardhat 实战技巧：⾃动化脚本、代码验证、导出 ABI 等
3. DApp 开发：前端与合约交互（ethers.js）
4. 优化 GAS 的众多技巧
5. 解析合约事件与TheGraph 使⽤



# 5. DEX 分析专场

1. Uniswap V2 AMM模型
2.  ⽆常损失与 AMM 滑点
3. SushiSwap 如何抢Uni 的流动性及质押模型介绍
4. Uniswap v3 的创新
5. 相关 DEX 协议介绍：0x协议、Curve 协议



# 6.抵押借贷及衍⽣品协议

1. Compound 借贷利率模型分析
2. AAVE 闪电贷及应⽤
3. DyDx 衍⽣品交易
4. Perpetual vAmm 杠杆交易



# 7.稳定币及 DAO

1. MakerDAO 稳定币DAI
2. 算法稳定币介绍：FRAX FEI OHM 等
3. DAO治理
4. 案例分享及讨论
