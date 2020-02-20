require "rails_helper"

RSpec.describe PotatosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/potatos").to route_to("potatos#index")
    end


    it "routes to #show" do
      expect(:get => "/potatos/1").to route_to("potatos#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/potatos").to route_to("potatos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/potatos/1").to route_to("potatos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/potatos/1").to route_to("potatos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/potatos/1").to route_to("potatos#destroy", :id => "1")
    end

  end
end
