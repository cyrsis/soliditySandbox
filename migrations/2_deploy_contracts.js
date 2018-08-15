var Inbox = artifacts.require("./Hello.sol");

module.exports = function(deployer) {
    deployer.deploy(Inbox);
};
