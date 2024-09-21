const {
  time,
  loadFixture,
} = require("@nomicfoundation/hardhat-toolbox/network-helpers");
const { anyValue } = require("@nomicfoundation/hardhat-chai-matchers/withArgs");
const { expect } = require("chai");

describe("Counter", function () {
  // We define a fixture to reuse the same setup in every test.
  // We use loadFixture to run this setup once, snapshot that state,
  // and reset Hardhat Network to that snapshot in every test.
  async function deployFixture() {
    // Contracts are deployed using the first signer/account by default
    const counterFactory
      = await ethers.getContractFactory("Counter");
    const counter = await counterFactory.deploy();
    counter.increment();

    return { counter };
  }

  describe("Deployment", function () {
    it("Should increment correctly", async function () {
      const { counter } = await loadFixture(deployFixture);
      await counter.increment();
      expect(await counter.number()).to.equal(2);
    });
  });
});
