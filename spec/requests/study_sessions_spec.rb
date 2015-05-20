require 'rails_helper'

RSpec.describe "StudySessions", type: :request do
  describe "GET /study_sessions" do
    it "works! (now write some real specs)" do
      get study_sessions_path
      expect(response).to have_http_status(200)
    end
  end
end
