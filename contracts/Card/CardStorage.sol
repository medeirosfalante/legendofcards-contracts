// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "./CardModel.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract CardStorage is CardModel, ERC721 {
    Card[] public cards;

    constructor(string memory _name, string memory _symbol)
        ERC721(_name, _symbol)
    {}

    function length() external view returns (uint256) {
        return cards.length;
    }

    function push(
        address _sender,
        CardType _cardType,
        MonsterType _monterType,
        string memory _name,
        uint256 _attack,
        uint256 _defense
    ) public returns (uint256 id) {
        cards.push(
            Card({
                name: _name,
                cardType: _cardType,
                monterType: _monterType,
                attack: _attack,
                defense: _defense
            })
        );
        id = cards.length - 1;
        _mint(_sender, id);
    }
}
