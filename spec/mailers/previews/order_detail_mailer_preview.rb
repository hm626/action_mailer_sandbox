# Preview all emails at http://localhost:3000/rails/mailers/order_detail_mailer
class OrderDetailMailerPreview < ActionMailer::Preview
  def welcome_email
    order_detail = FactoryBot.create(:order_detail)
    OrderDetailMailer.with(order_detail: order_detail).welcome_email
  end
end
