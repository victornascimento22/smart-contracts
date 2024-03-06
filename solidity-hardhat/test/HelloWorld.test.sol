// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { loadFixture } from "@nomicfoundation/hardhat-network-helpers";
import { expect } from "chai";
import { ethers } from "hardhat";

describe('HelloWorld', () => {
  it('Should Hello the world', async () => {
    const { helloWorld } = await loadFixture(deployFixture);
    const result = await helloWorld.helloWorld();
    
    console.log("Result:", result); // Adicione esta linha para debug

    expect(result).equal("hello world");
  });

  async function deployFixture() {
    const [owner, otherAccount] = await ethers.getSigners();
    const HelloWorld = await ethers.getContractFactory('HelloWorld');
    const helloWorld = await HelloWorld.deploy();
    return { helloWorld, owner, otherAccount };
  }
});
