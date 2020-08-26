require "rails_helper"

RSpec.describe OrderDetailMailer, type: :mailer do
  let!(:order_detail) { create(:order_detail) }
  let(:mail) do
    OrderDetailMailer.with(order_detail: order_detail).welcome_email
    # ActionMailer::Base.deliveries.last
  end

  # 単体テスト
  context "メールを送信したとき" do
    it "キューに追加される" do
      is_asserted_by { mail.deliver_now.present? }
    end
    it "本文が期待通りの内容である" do
      is_asserted_by { mail.to == [order_detail.email] }
    end
  end
end
