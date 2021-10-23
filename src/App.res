module App = {
  @react.component
  let make = () => {
    <ApolloClient.React.ApolloProvider client=Apollo.client>
      <div> <h2> {React.string("My first Apollo app")} </h2> <Transactions /> </div>
    </ApolloClient.React.ApolloProvider>
  }
}

switch ReactDOM.querySelector("#app-root") {
| Some(root) => ReactDOM.render(<App />, root)
| None => ()
}
