require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	 let(:user) { FactoryBot.create(:user) }
	 before :each do
	  	sign_in(user, scope: :user)
	 end

	 describe "get #show" do
	 	 it "response with a render 302" do
	 	 	 get :show, params: { id: user.id }
	 	 	 expect(response.status).to eq(200)
	 	 end
	 end
	 
	 after :each do
	 	 sign_out(user)
	 end
end
