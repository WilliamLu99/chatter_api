module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :users, [Types::UserType], null: false, description: "Users!"
    def users
      User.all
    end

    field :messages, [Types::MessageType], null: false, description: "Messages!"
    def messages
      Message.all
    end

    field :user, Types::UserType, null: false, description: "Specific user" do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end
  end
end
