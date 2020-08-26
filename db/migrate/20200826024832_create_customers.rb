class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers, comment: "お客さん" do |t|
      t.string :name, null: false, comment: "お名前"
      t.string :company, null: false, comment: "会社名"
      t.string :email, null: false, comment: "メールアドレス"
      t.string :phone, null: false, comment: "電話番号"
      t.integer :quantity, null: false, comment: "数量"

      t.timestamps
    end
  end
end
