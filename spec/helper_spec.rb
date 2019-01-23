def create_spot
  spot = FactoryBot.create(:spot)
  user_with_spot = FactoryBot.create(:user, spot: spot)
  allow(User).to receive(:find).and_return(user_with_spot)
  spots :create, params: { spot: { id: test_post.id, spot: test_post.spot, location: spot.location, username: spot.user.username } }
end

def delete_post
  delete :destroy, params: { id: post_in_db.id }
end
