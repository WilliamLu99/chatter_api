module Mutations
  class CreateMessage < BaseMutation
    argument :content, String, required: false
    argument :recipient_id, ID, required: true
    argument :sender_id, ID, required: true

    field :message, Types::MessageType, null: false
    field :errors, [String], null: false

    def resolve(content:, recipient_id:, sender_id:)
      message = Message.new(content: content, recipient_id: recipient_id, sender_id: sender_id)

      if message.save
        {
          message: message,
          errors: [],
        }
      else
        {
          message: nil,
          errors: message.errors.full_messages,
        }
      end
    end

  end
end
