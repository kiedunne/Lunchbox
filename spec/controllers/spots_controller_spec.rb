require 'rails_helper'

RSpec.describe SpotsController, type: :controller do
		let(:user) { FactoryBot.create(:user) }
		context "When user NOT Logged IN" do
			 describe "GET #new " do
			 	 it "responds with 302" do
					   get :new
					   expect(response).to have_http_status(302)
				  end
			 end
		end
		context "When Logged IN" do
				let(:test_spot) { FactoryBot.create(:spot) }
				before :each do
						sign_in(user, scope: :user)
				end
				describe "GET #index " do
						it "responds with 200" do
								get :index
								expect(response).to have_http_status(200)
						end
				end
				describe "GET #show" do
						it "responds with 200" do
								get :show, params: { id: test_spot.id }
								expect(response).to have_http_status(200)
						end
				end
				describe "POST #create" do
					 it "responds creates a post in db" do
					 		expect { create_spot }.to change { Spot.count }.by(1)
					 end
				end
		end
end

def create_spot
  spot = FactoryBot.create(:spot)
  user_with_spot = FactoryBot.create(:user, spot: spot)
  allow(User).to receive(:find).and_return(user_with_spot)
  spots :create, params: { spot: { id: test_post.id, spot: test_post.spot, location: spot.location, username: spot.user.username } }
end
