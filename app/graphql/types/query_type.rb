module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :users, [Types::UserType], null: false, description: "Users!"
    def users
      User.all
    end

    field :messages, [Types::MessageType], null: false, description: "Messages!" do
      argument :user_id, ID, required: true
    end

    def messages(user_id:)
      Message.where(sender_id: user_id).or(Message.where(recipient_id: user_id)).order(:created_at)
    end

    field :user, Types::UserType, null: false, description: "Specific user" do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end
  end
end
