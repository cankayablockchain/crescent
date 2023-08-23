const offerContract = artifacts.require("OfferContract");

module.exports = function (deployer) {
    deployer.deploy(offerContract);
};