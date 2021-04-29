const UpgradeController = artifacts.require("./UpgradeController.sol");
const CardCore = artifacts.require("./CardCore.sol");
const CardGetter = artifacts.require("./CardGetter.sol");
const CardParams = artifacts.require("./CardParams.sol");
const CardCoreHelper = artifacts.require("./CardCoreHelper.sol");
const CardStorage = artifacts.require("./Card/CardStorage.sol");
const Core = artifacts.require("./Card/Core.sol");
const User = artifacts.require("./User.sol");
const Card_TOKEN_NAME = "Cardereum Card";
const Card_TOKEN_SYMBOL = "Card";

async function estimateGas(contract, ...params) {
  const estimation = await contract.new.estimateGas(...params);
  return { gas: estimation + 300000 };
}

const CARD_TOKEN_NAME = "Locs Card";
const CARD_TOKEN_SYMBOL = "LOCSCARD";

module.exports = async (deployer, network, [account]) => {
  await deployer;
  const CardStorageParams = [CARD_TOKEN_NAME, CARD_TOKEN_SYMBOL];
  await deployer.deploy(
    UpgradeController,
    await estimateGas(UpgradeController)
  );
  await deployer.deploy(User, await estimateGas(User));
  await deployer.deploy(
    CardStorage,
    ...CardStorageParams,
    await estimateGas(CardStorage, ...CardStorageParams)
  );
  await deployer.deploy(CardParams, await estimateGas(CardParams));
  await deployer.deploy(CardCore, await estimateGas(CardCore));
  await deployer.deploy(CardGetter, await estimateGas(CardGetter));
  await deployer.deploy(CardCoreHelper, await estimateGas(CardCoreHelper));

  await deployer.deploy(Core, await estimateGas(Core));
};
