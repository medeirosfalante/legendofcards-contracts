// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "./Common/Upgradable.sol";
import "./Core.sol";
import "./Getter.sol";

contract CardController is Upgradable {
    Core core;
    Getter getter;

    // UPDATE CONTRACT

    function setInternalDependencies(address[] memory _newDependencies)
        public
        override
        onlyOwner
    {
        super.setInternalDependencies(_newDependencies);

        core = Core(_newDependencies[0]);
        getter = Getter(_newDependencies[2]);
    }
}
