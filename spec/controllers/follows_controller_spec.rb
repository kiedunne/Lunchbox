require 'rails_helper'
require_relative '../helper_spec.rb'

RSpec.describe FollowsController, type: :controller do
	 let(:user) { FactoryBot.create(:user) }
	 let(:test_spot) { create_spot }
	 describe "Follow #create " do
		  it "responds with 200 if follow created" do
			   create_follow(test_spot, user)
			   expect(response).to have_http_status(200)
		  end
	 end
end
