require "rails_helper"

RSpec.describe SkytouchUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/skytouch_users").to route_to("skytouch_users#index")
    end

    it "routes to #new" do
      expect(:get => "/skytouch_users/new").to route_to("skytouch_users#new")
    end

    it "routes to #show" do
      expect(:get => "/skytouch_users/1").to route_to("skytouch_users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/skytouch_users/1/edit").to route_to("skytouch_users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/skytouch_users").to route_to("skytouch_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/skytouch_users/1").to route_to("skytouch_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/skytouch_users/1").to route_to("skytouch_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/skytouch_users/1").to route_to("skytouch_users#destroy", :id => "1")
    end

  end
end
