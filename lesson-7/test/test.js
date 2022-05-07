const { assert, expect } = require('chai');

const DummyContract = artifacts.require("DummyContract");

contract("Dummy Contract", ([owner, user1]) => {
  let dummyContract;

  // Before any tests are run, deploy the contract to be tested
  before(async () => {
    dummyContract = await DummyContract.deployed();

    // Gets the list of accounts from Web3
    let accounts = await web3.eth.getAccounts();
    // Displays accounts
    let count = 0;
    for (let account in accounts) {
      console.log(`Accounts${count}: ${accounts[account]} \n`);
      count++;
    }
  })

  // Before each describe block is run
  beforeEach(async () => {
    // this deploys a new version on the DummyContract so that everything is reset.
    dummyContract = await DummyContract.new();
  })

  // Using chai assert statements.

  describe("Contract deployment", async () => {
    it("Should know information about the contract", async () => {
      // Failing test.
      assert.notEqual(await dummyContract.owner(), user1);
      // Passing test.
      assert.equal(await dummyContract.owner(), owner);
      assert.equal(await dummyContract.symbol(), "DumTkn");
      assert.equal(await dummyContract.name(), "DummyToken");
    })
  })
})