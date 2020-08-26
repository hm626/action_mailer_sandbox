module Types::Objects
  class OrderDetailType < BaseObject
    description "注文情報"

    field :id, ID, null: true, description: "注文情報ID"

    field :name, String, null: false, description: "おなまえ"
    field :phone, String, null: false, description: "電話番号"
    field :email, String, null: false, description: "メールアドレス"
    field :company, String, null: false, description: "会社名"
    field :quantity, Integer, null: false, description: "注文数"
  end
end
