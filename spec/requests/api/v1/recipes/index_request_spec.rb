require 'rails_helper'

RSpec.describe "Api::V1::Recipes", type: :request do
  describe "GET /index" do
    it "returns http success" do

      get "/api/v1/recipes/index"

      expect(response).to have_http_status(:success)
      expect(response.headers["Content-Type"]).to eq("application/json; charset=utf-8")
    end
  end
end
