require 'rails_helper'

RSpec.describe "Api::V1::Recipes", type: :request do
  describe "GET /show" do
    it "returns http success" do

      get "/api/v1/recipes/show"

      expect(response).to have_http_status(:success)
      expect(response.headers["Content-Type"]).to eq("text/html; charset=utf-8")
    end
  end
end
