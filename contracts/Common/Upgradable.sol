// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "./Controllable.sol";

contract Upgradable is Controllable {
    address[] internalDependencies;
    address[] externalDependencies;

    function getInternalDependencies() public view returns (address[] memory) {
        return internalDependencies;
    }

    function getExternalDependencies() public view returns (address[] memory) {
        return externalDependencies;
    }

    function setInternalDependencies(address[] memory _newDependencies)
        public
        virtual
        onlyOwner
    {
        for (uint256 i = 0; i < _newDependencies.length; i++) {
            _validateAddress(_newDependencies[i]);
        }
        internalDependencies = _newDependencies;
    }

    function setExternalDependencies(address[] memory _newDependencies)
        public
        onlyOwner
    {
        _setControllers(externalDependencies, false); // Reset old controllers
        externalDependencies = _newDependencies;
        _setControllers(_newDependencies, true); // Add new controllers
    }
}
