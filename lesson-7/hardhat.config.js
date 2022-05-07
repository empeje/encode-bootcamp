/**
 * @type import('hardhat/config').HardhatUserConfig
 */

require('@nomiclabs/hardhat-waffle');
require('@nomiclabs/hardhat-truffle5');
require("@nomiclabs/hardhat-ganache");

module.exports = {
  solidity: "0.8.0",
  defaultNetwork: "ganache",
  networks: {
    ganache: {
      url: "http://127.0.0.1:8545",
      gasLimit: 6721975,
      defaultBalanceEther: 1000,
    }
  }
};
