require 'rails_helper'

RSpec.describe HomeController, type: :controller do
	 describe "get #index" do
	 	 it "send a 200 status" do
	 	 	 get :index
	 	 	 expect(response).to have_http_status(200)
	 	 end
	 end
end
