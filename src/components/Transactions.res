// module SubscribeTx = %graphql(`
//     subscription SubscribeTx {
//       mainnet_target_avax_relay_tx {
//         id
//         nonce
//         sender
//         status
//         tx_hash
//       }
//     }
//   `)

module SubscribeEpisode = %graphql(`
    subscription allValidator {
		validators {
            id
            moniker
        }
    }
`)

@react.component
let make = () => {
  let txResult = SubscribeEpisode.use()
  Js.log(txResult)
  <div />
}
