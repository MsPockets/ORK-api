require 'rails_helper'

RSpec.describe "Potatos", type: :request do
  describe "GET /potatos" do
    it "works! (now write some real specs)" do
      get potatos_path
      expect(response).to have_http_status(200)
    end
  end
end
