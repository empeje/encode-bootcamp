const Migrations = artifacts.require("Migrations");
const VolcanoCoin = artifacts.require("VolcanoCoin");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(VolcanoCoin);
};
