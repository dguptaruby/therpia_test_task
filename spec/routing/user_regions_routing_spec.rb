require "rails_helper"

RSpec.describe UserRegionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_regions").to route_to("user_regions#index")
    end

    it "routes to #new" do
      expect(get: "/user_regions/new").to route_to("user_regions#new")
    end

    it "routes to #show" do
      expect(get: "/user_regions/1").to route_to("user_regions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/user_regions/1/edit").to route_to("user_regions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_regions").to route_to("user_regions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_regions/1").to route_to("user_regions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_regions/1").to route_to("user_regions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_regions/1").to route_to("user_regions#destroy", id: "1")
    end
  end
end
