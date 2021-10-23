let make = %graphql(`
  query {
    mainnet_target_avax_relay_tx(limit: 10) {
      id
      nonce
      sender
      status
      tx_hash
    }
  }
`)
