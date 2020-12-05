# First_Smart_Contract_Hello_Blockchain


steps

Open vscode or any editor
 
1.mkdir hello-blockchain

2.ls

3.cd hello-blockchain

4.if node is not installed
	dowload nodejs it aslo contain npm
	or npm install -y
	
5. npm init -y 			// initialize the project

6.ls 				// contain package.json file

7. npm install web3 solc@5.2    // solc@version

8.ls

9.ls node_modules/

10. Create Hello.sol file


// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.4.25;

contract Hello {
    string greeting;

    constructor() public {
        greeting = "Hello Blockchain World";
    }

    function getGreeting() public view returns(string memory) {
        return greeting;
    }

    function setGreeting(string _greeting) public {
        greeting = _greeting;
    }
}

11.type node

12.type  compiler = require('solc')

13.type compiler.version();

14.type sourceCode = fs.readFileSync('Hello.sol').toString();

15.type compiledCode = compiler.compile(sourceCode)

16.type compiledCode.contracts[':Hello']

17.type helloInterfase = JSON.parse(compiledCode.contracts[':Hello'].interfase)

18.type helloByteCode = compiledCode.contracts[':Hello'].bytecode;

19.type helloInterface

20.type helloByteCode

//
//

21.ethereumJS = require('web3')

22.web3 = new ethereumJS('http://localhost:8545')

23.web3.eth.getAccounts().then(function(result) {accounts = result;});

24.accounts

25.helloContract = new web3.eth.Contract(helloInterface)

26.helloContract.deploy({data: helloByteCode}).send({from:accounts[0],gas:4700000}).then(function(result){myContract = result;});

27.myContract

28.myContract.options.address

29.compiledCode.contracts[':Hello'].gasEstimates

30.myContract.methods.getGreeting().call().then(console.log)

31.web3.eth.getBalance(accounts[0]).then(function(result) {console.log(web3.utils.fromWei(result,"ether"));});

32.myContract.methods.setGreeting("Blockchain is awsome!!").send({from:accounts[0]});

33.myContract.methods.getGreeting().call().then(console.log)




Open new terminal

1.npm install ganache-cli

2.ganache-cli


 



 



 
