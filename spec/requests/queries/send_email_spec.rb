require "rails_helper"
RSpec.describe "Queries sendEmail", type: :request do
  let(:req) { post graphql_path, params: { query: query } }

  let!(:order_detail) { create(:order_detail) }

  let(:query) do
    <<~QUERY
      {
        sendEmail(id: #{order_detail.id} )
      }
    QUERY
  end

  context "メールを送信したとき" do
    it "返却値がただしい" do
      req
      json = json_parser(response.body)
      is_asserted_by { ActionMailer::Base.deliveries.last.subject == "ようこそ!!!!!!!!!" }
    end
  end
end
