// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "./Common/Upgradable.sol";
import "./Core.sol";
import "./Card/CardParams.sol";
import "./Card/CardGetter.sol";

contract Getter is Upgradable {
    Core core;
    CardParams dragonParams;
    CardGetter dragonGetter;

    function _isValidAddress(address _addr) internal pure returns (bool) {
        return _addr != address(0);
    }

    function setInternalDependencies(address[] memory _newDependencies)
        public
        override
        onlyOwner
    {
        super.setInternalDependencies(_newDependencies);

        core = Core(_newDependencies[0]);
        dragonParams = CardParams(_newDependencies[1]);
        dragonGetter = CardGetter(_newDependencies[2]);
    }
}
