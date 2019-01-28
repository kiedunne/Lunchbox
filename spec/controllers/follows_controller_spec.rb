require 'rails_helper'
require_relative '../helper_spec.rb'

RSpec.describe FollowsController, type: :controller do
	 let(:user) { FactoryBot.create(:user) }
	 let(:test_spot) { create_spot }
	 before :each do
		  sign_in(user, scope: :user)
	 end
	 describe "Follow #follow " do
		  it "responds with 302 if follow created" do
			   post :follow, params: { id: test_spot.id }
			   expect(response.status).to eq(302)
		  end
	 end

	 describe "Follow #follow " do
		  it "increase in the db" do
				  expect { post :follow, params: { id: test_spot.id } }.to change { Follow.count }.by(1)
		  end
	 end

	 describe "Follow #unfollow" do
		 	it "respond with 302 if unfollow" do
				  post :unfollow, params: { id: test_spot.id }
					 expect(response.status).to eq(302)
		 	end
	 end

	 after :each do
		 	sign_out(user)
	 end
end
