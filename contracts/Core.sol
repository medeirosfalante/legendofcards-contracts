// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "./Common/Upgradable.sol";
import "./Card/CardCore.sol";
import "./Card/CardGetter.sol";

contract Core is Upgradable {
    CardCore cardCore;
    CardGetter cardGetter;

    // UPDATE CONTRACT

    function setInternalDependencies(address[] memory _newDependencies)
        public
        override
        onlyOwner
    {
        super.setInternalDependencies(_newDependencies);
        cardCore = CardCore(_newDependencies[0]);
        cardGetter = CardGetter(_newDependencies[1]);
    }
}
