pragma solidity 0.8.4;

import "../Common/ERC721/ERC721Token.sol";
import "./CardModel.sol";

contract CardStorage is CardModel, ERC721Token {
    Card[] public cards;

    constructor(string _name, string _symbol)
        public
        ERC721Token(_name, _symbol)
    {
        cards.length = 1;
    }

    function length() external view returns (uint256) {
        return cards.length;
    }

    function push(
        address _sender,
        CardType _cardType,
        MonsterType _monterType,
        string _name
    ) public OnlyController returns (uint256 id) {
        id = cards
            .push(
            new Card({
                name: _name,
                cardType: _cardType,
                monterType: _monterType
            })
        )
            .sub(1);
        _mint(_sender, id);
    }
}
