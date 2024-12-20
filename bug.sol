uint256 internal constant SECONDS_IN_A_YEAR = 31536000; // changed from 31556926 in original contract

uint256 internal constant SECONDS_IN_A_DAY = 86400;

uint256 public override totalSupply;

uint256 public constant MAX_SUPPLY = 1000000000000000000000000000;

constructor(uint256 initialSupply, address _recipient)
    ERC20("ExampleToken", "EXM")
{
    _mint(_recipient, initialSupply);
    totalSupply = initialSupply;
}

function mint(address to, uint256 amount) public onlyOwner {
    require(totalSupply + amount <= MAX_SUPPLY, "The total supply exceeds the maximum supply.");
    _mint(to, amount);
    totalSupply += amount;
}