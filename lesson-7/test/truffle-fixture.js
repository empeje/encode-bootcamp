// This file is used instead of migration file as the Truffle plugin doesn't fully support migration yet
// Instead, need to adapt the migration to become a hardhat-truffle fixture

const DummyContract = artifacts.require("DummyContract");

// Layout for hardhat deployment

module.exports = async () => {
  const dummyContract = await DummyContract.new();
  DummyContract.setAsDeployed(dummyContract);
  console.log("Dummy contract successfully deployed");
}