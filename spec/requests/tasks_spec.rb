require 'rails_helper'

RSpec.describe "Tasks", :type => :request do
  describe "GET /tasks" do
    it "works! (now write some real specs)" do
      headers = {
        "ACCEPT" => "application/json",
        "HTTP_ACCEPT" => "application/json"
      }
      get tasks_path, nil, headers
      expect(response).to have_http_status(200)
    end
  end
end
