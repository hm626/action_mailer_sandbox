# == Schema Information
#
# Table name: order_details
#
#  id                    :bigint           not null, primary key
#  company(会社名)       :string           not null
#  email(メールアドレス) :string           not null
#  name(おなまえ)        :string           not null
#  phone(電話番号)       :integer          not null
#  quantity(注文数)      :integer          not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class OrderDetail < ApplicationRecord
end
