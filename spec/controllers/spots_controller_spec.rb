require 'rails_helper'
require_relative '../helper_spec.rb'

RSpec.describe SpotsController, type: :controller do
		let(:user) { FactoryBot.create(:user) }
		let(:test_spot) { create_spot }
		context "When user NOT Logged IN" do
			 describe "GET #new " do
			 	 it "responds with 302" do
					   get :new
					   expect(response).to have_http_status(302)
				  end
			 end
			 describe "POST #create" do
			 	 it "Response with 302" do
			 		  post :create
			 		  expect(response).to redirect_to("/users/sign_in")
			 	 end
			 end
		end
		context "When Logged IN" do
				before :each do
						sign_in(user, scope: :user)
				end
				describe "GET #index " do
						it "responds with 200" do
								get :index
								expect(response).to have_http_status(200)
						end
				end

				describe "Get #show" do
					 it 'should show spot' do
						  get :show, params: { id: test_spot.id }
						  expect(response.status).to eq(200)
					 end
				end

				describe "SPOST #create" do
					 it "responds creates a spot in db" do
					 		expect { create_spot }.to change { Spot.count }.by(1)
					 end
				end

				describe "Spots #create" do
					 it "Render to the spot after creating it with 200" do
					 	 post :create, params: {
					 	 	spot: {
					 	 		id: test_spot.id,
					 	 		spot: test_spot.spot,
					 	 		time: test_spot.time,
					 	 		location: test_spot.location,
								info: test_spot.info,
								user_id: user.id,
								username: user.username,
								time_start: test_spot.time_start,
								time_end: test_spot.time_end
					 	 		 } }
					 	 expect(response).to have_http_status(200)
					 end
				end
				describe "GET #new " do
					 it "responds with 200" do
						  get :new
						  expect(response).to have_http_status(200)
					 end
				end

				describe "DELETE #destroy" do
					 it "deletes a spot from db" do
						  spot = create_spot
						  expect { delete_post(spot.id) }.to change { Spot.count }.by(-1)
					 end

					 it "responds with a redirect" do
					 	 delete_post(test_spot.id)
					 	 expect(response).to have_http_status(302)
					 end
				end

				describe "POST #update" do
					 it "Update a spot" do
						  update_spot(test_spot.id)
						  expect(response.status).to eq(200)
					 end
				end

				describe "GET #find" do
					 it "find a spot" do
						  get :edit, params: { id: test_spot.id }
						  expect(response.status).to eq(200)
					 end
				end
		end
		after :each do
			 sign_out(user)

		end
end
