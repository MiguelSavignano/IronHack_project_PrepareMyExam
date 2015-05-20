require "rails_helper"

RSpec.describe StudySessionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/study_sessions").to route_to("study_sessions#index")
    end

    it "routes to #new" do
      expect(:get => "/study_sessions/new").to route_to("study_sessions#new")
    end

    it "routes to #show" do
      expect(:get => "/study_sessions/1").to route_to("study_sessions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/study_sessions/1/edit").to route_to("study_sessions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/study_sessions").to route_to("study_sessions#create")
    end

    it "routes to #update" do
      expect(:put => "/study_sessions/1").to route_to("study_sessions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/study_sessions/1").to route_to("study_sessions#destroy", :id => "1")
    end

  end
end
