// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "./CardBase.sol";
import "./CardModel.sol";

contract CardCore is CardBase {
    function createCard(
        address _sender,
        CardModel.CardType _cardType,
        CardModel.MonsterType _monterType,
        string memory _name,
        uint256 _attack,
        uint256 _defense
    ) external onlyController returns (uint256 newCardId) {
        newCardId = _storage_.push(
            _sender,
            _cardType,
            _monterType,
            _name,
            _attack,
            _defense
        );
    }
}
