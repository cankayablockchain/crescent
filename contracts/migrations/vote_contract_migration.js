const votingContract = artifacts.require("VotingContract");

module.exports = function (deployer) {
    deployer.deploy(votingContract);
};