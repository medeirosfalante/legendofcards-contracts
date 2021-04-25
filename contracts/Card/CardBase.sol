pragma solidity 0.8.4;

import "../Common/Upgradable.sol";
import "../Common/Random.sol";
import "./CardStorage.sol";
import "./CardParams.sol";
import "./CardCoreHelper.sol";
import "../Common/SafeMath32.sol";
import "../Common/SafeMath256.sol";
import "../Common/SafeConvert.sol";

contract CardBase is Upgradable {
    CardStorage _storage_;
}
