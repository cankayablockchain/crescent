module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*"
    },
    testnet: {
      host: "127.0.0.1",
      port: 8546,
      network_id: "3"
    }
  },
  mocha: {
    enabled: true
  },
  compilers: {
    solc: {
      version: "0.7.3",
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  },
  db: {
    enabled: false
  }
};