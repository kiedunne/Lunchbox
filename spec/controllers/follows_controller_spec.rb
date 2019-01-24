require 'rails_helper'
require_relative '../helper_spec.rb'

RSpec.describe FollowsController, type: :controller do
	 let(:user) { FactoryBot.create(:user) }
	 let(:test_spot) { create_spot }
	 describe "Follow #follow " do
		  it "responds with 302 if follow created" do
			   allow(controller).to receive(:current_user).and_return(user)
			   post :follow
			   expect(response.status).to eq(302)
		  end
	 end

	 # describe "Follow #follow " do
		#   it "increase in the db" do
		#   	 expect { post :create }.to change { Follow.count }.by(1)
		#   end
	 # end
end
