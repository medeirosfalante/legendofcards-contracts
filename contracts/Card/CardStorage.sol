pragma solidity 0.4.25;


import "../Common/ERC721/ERC721Token.sol";
import "./CardModel.sol";

contract CardStorage is CardModel, ERC721Token {
  Card[] public cards;

  constructor(string _name, string _symbol) public ERC721Token(_name,_symbol) {
    cards.length = 1;	  
  }

  function length() external view returns (uint256) {
    return cards.length;
  }

  function push(address _sender) public OnlyController returns (uint256 id)
  {
     id = cards.push(new Card({})).sub(1);
     _mint(_sender,id);
  }	 

}
	
