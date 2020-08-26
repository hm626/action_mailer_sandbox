# == Schema Information
#
# Table name: order_details
#
#  id                    :bigint           not null, primary key
#  company(会社名)       :string           not null
#  email(メールアドレス) :string           not null
#  name(おなまえ)        :string           not null
#  phone(電話番号)       :string           not null
#  quantity(注文数)      :integer          not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
FactoryBot.define do
  factory :order_detail, class: OrderDetail do
    name { "小林" }
    email { "test@example.com" }
    phone { "070-1234-5678" }
    quantity { 3 }
    company { "Amadon" }
  end
end
