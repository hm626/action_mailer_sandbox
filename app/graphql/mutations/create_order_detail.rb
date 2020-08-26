module Mutations
  class CreateOrderDetail < BaseMutation
    field :order_detail, Types::Objects::OrderDetailType, null: true
    field :errors, [String], null: false

    argument :attributes, Types::Inputs::OrderDetailAttributesType, required: true

    def resolve(attributes:)
      order_detail = OrderDetail.create!(attributes.to_h)
      { order_detail: order_detail.reload, errors: [] }
    end
  end
end
