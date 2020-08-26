module Types::Inputs
  class OrderDetailAttributesType < BaseInputObject
    description "注文情報"

    argument :id, ID, required: false, description: "注文情報ID"

    argument :name, String, required: true, description: "おなまえ"
    argument :phone, String, required: true, description: "電話番号"
    argument :email, String, required: true, description: "メールアドレス"
    argument :company, String, required: true, description: "会社名"
    argument :quantity, Integer, required: true, description: "注文数"
  end
end
