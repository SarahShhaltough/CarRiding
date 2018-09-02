module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      from: '0x1d070c82013d943090C67725B4625A6840b04120',
      network_id: 5777, // Match any network id
       gasPrice: 2000000000,   // <--- Twice as much
       gas: 6721975,   // <--- Twice as much
    }
  }
};
