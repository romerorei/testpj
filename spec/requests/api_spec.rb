require 'rails_helper'

RSpec.describe "Apis", type: :request do
  describe "GET /V1::StoresController" do
    it "returns http success" do
      get "/api/V1::StoresController"
      expect(response).to have_http_status(:success)
    end
  end

end
