// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "./CardStorage.sol";
import "./CardCore.sol";
import "./CardCoreHelper.sol";
import "../Common/Upgradable.sol";

contract CardGetter is Upgradable {
    CardStorage _storage_;
    CardCore cardCore;
    CardCoreHelper helper;

    function setInternalDependencies(address[] memory _newDependencies)
        public
        override
        onlyOwner
    {
        super.setInternalDependencies(_newDependencies);
        _storage_ = CardStorage(_newDependencies[0]);
        cardCore = CardCore(_newDependencies[1]);
        helper = CardCoreHelper(_newDependencies[2]);
    }
}
