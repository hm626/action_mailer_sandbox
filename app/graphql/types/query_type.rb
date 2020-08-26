module Types
  class QueryType < Types::Objects::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :send_email,
          String,
          null: false do
            description "Email送信"
            argument :id, ID, required: true
          end
    def send_email(id:)
      OrderDetailMailer.with(order_detail: OrderDetail.find(id)).welcome_email.deliver
    end
  end
end
