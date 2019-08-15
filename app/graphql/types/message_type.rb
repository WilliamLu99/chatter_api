module Types
  class MessageType < Types::BaseObject
    field :id, ID, null: false
    field :sender, UserType, null: false
    field :recipient, UserType, null: false
    field :content, String, null: true
    field :created_at, String, null: false
    field :updated_at, String, null: false
  end
end
