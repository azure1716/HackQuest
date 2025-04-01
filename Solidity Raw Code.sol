pragma solidity 0.8.26;
contract DeflationaryToken {
    mapping(address => uint256) public balanceOf;
    uint256 public totalSupply;
    address public owner = msg.sender;
    uint8 public burnPercentage = 2; // 2% burn on each transfer
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);

    function mint(address to, uint256 amount) public {
        require(msg.sender == owner, "Only owner can mint");
        balanceOf[to] += amount;
        totalSupply += amount;
        emit Transfer(address(0), to, amount);
    }

    function transfer(address to, uint256 amount) public returns (bool) {
        require(balanceOf[msg.sender] >= amount, "Insufficient balance");
        
        uint256 burnAmount = (amount * burnPercentage) / 100;
        uint256 sendAmount = amount - burnAmount;

        balanceOf[msg.sender] -= amount;
        balanceOf[to] += sendAmount;
        totalSupply -= burnAmount;

        emit Transfer(msg.sender, to, sendAmount);
        emit Burn(msg.sender, burnAmount);
        
        return true;
    }
}
