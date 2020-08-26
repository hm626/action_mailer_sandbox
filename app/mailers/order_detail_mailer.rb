class OrderDetailMailer < ApplicationMailer
  # default(Hash)
  default from: ""

  def welcome_email
    mail(to: params[:order_detail].email, subject: "ようこそ!!!!!!!!!")
  end
end
