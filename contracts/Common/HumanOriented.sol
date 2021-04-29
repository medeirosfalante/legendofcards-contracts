// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

contract HumanOriented {
    modifier onlyHuman() {
        require(msg.sender == tx.origin, "not a human"); // solium-disable-line security/no-tx-origin
        _;
    }
}
