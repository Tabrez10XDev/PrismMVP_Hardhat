require("@nomicfoundation/hardhat-toolbox");
require("hardhat-circom");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  defaultNetwork: "sepolia",
  networks:{
    hardhat: {},
    sepolia: {
      url: "https://eth-sepolia.g.alchemy.com/v2/UCNz6oMhkBdnLoBByo6nS_8_mm9V3YZ1",
      accounts: ["0xac5ce83bd26133b4015cd027e41bebe4906699a998912db6940cb86287a643ce"]
    }
  },
  circom: {
    inputBasePath: './circuits',
    ptau: 'https://hermez.s3-eu-west-1.amazonaws.com/powersOfTau28_hez_final_15.ptau',
    circuits: [
      {
        name: 'ageCheck'
      },
      {
        name: 'aadharCheck'
      }
    ]
  }
};
