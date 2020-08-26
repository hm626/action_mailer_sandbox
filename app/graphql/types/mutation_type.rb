module Types
  class MutationType < Types::Objects::BaseObject
    field :create_order_detail, mutation: Mutations::CreateOrderDetail, description: "注文情報作成"
  end
end
