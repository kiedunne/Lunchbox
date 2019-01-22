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
		end
end
