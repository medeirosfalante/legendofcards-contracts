// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "../Common/Upgradable.sol";
import "./CardStorage.sol";
import "./CardParams.sol";
import "./CardCoreHelper.sol";

contract CardBase is Upgradable {
    CardStorage _storage_;
    CardCoreHelper helper;
}
