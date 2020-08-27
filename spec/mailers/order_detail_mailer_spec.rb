require "rails_helper"

RSpec.describe OrderDetailMailer, type: :mailer do
  let!(:order_detail) { create(:order_detail) }
  let(:mail) do
    OrderDetailMailer.with(order_detail: order_detail).welcome_email
  end

  # 単体テスト
  context "メールを作成したとき" do
    it "キューに追加される" do
      is_asserted_by { assert_emails(1) { mail.deliver_now } }
    end
    it "本文が期待通りの内容である" do
      is_asserted_by { mail.to == [order_detail.email] }
      is_asserted_by { mail.from == ["ofuromochi@gmail.com"] }
      is_asserted_by { mail.subject == "ようこそ!!!!!!!!!" }
      is_asserted_by { file_fixture("welcome_email_spec.html.erb").read.include?("<p>ご入会ありがとうございます。どうぞお楽しみくださいませ。</p>") }
    end
  end
end
