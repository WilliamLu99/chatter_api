class ChatterApiSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
  use GraphQL::Subscriptions::ActionCableSubscriptions
end
