require 'rails_helper'

RSpec.describe "SkytouchUsers", type: :request do
  describe "GET /skytouch_users" do
    it "works! (now write some real specs)" do
      get skytouch_users_path
      expect(response).to have_http_status(200)
    end
  end
end
