require 'rails_helper'

RSpec.describe "Requestinvs", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/requestinvs/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/requestinvs/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/requestinvs/new"
      expect(response).to have_http_status(:success)
    end
  end

end
