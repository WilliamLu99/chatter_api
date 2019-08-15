module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :created_at, String, null: false
    field :updated_at, String, null: false
    field :sent_messages, [MessageType], null: true
    field :received_messages, [MessageType], null: true
  end
end
