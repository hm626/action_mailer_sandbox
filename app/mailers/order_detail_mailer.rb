class OrderDetailMailer < ApplicationMailer
  # default(Hash)
  default from: "ofuromochi@gmail.com"

  def welcome_email
    # @order_detail = params[:order_detail]
    # @url = "http:example.com/login"
    mail(to: params[:order_detail].email, subject: "ようこそ!!!!!!!!!")
  end
end
