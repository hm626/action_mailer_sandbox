class OrderDetailMailer < ApplicationMailer
  # default(Hash)
  default from: "ofuromochi@gmail.com"

  def welcome_email
    @name = params[:order_detail].name
    @phone = params[:order_detail].phone
    @company = params[:order_detail].company
    @email = params[:order_detail].email
    @quantity = params[:order_detail].quantity

    mail(to: params[:order_detail].email, subject: "ようこそ!!!!!!!!!")
  end
end
