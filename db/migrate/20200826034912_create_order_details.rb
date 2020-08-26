class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      t.string :name, null: false, comment: "おなまえ"
      t.string :phone, null: false, comment: "電話番号"
      t.string :email, null: false, comment: "メールアドレス"
      t.string :company, null: false, comment: "会社名"
      t.integer :quantity, null: false, comment: "注文数"

      t.timestamps
    end
  end
end
