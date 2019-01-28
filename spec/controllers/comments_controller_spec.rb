require 'rails_helper'
require_relative '../helper_spec.rb'

RSpec.describe CommentsController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let(:test_spot) { create_spot }
  let(:comment) { create_comment }
  before :each do
    sign_in(user, scope: :user)
  end

  describe "Comment #create" do
    it "Should reponse with status 200" do
      create_comment
      expect(response.status).to eq(200)
    end

    it "Affect the BD" do
      expect { create_comment }.to change { Comment.count }.by(1)
    end
  end

  # describe "Comment #destroy" do
  #   it "redirect after with 302" do
  #     delete_comment(comment.id)
  #     expect(response.status).to eq(302)
  #   end
  # end
end
