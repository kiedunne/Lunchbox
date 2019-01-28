def create_spot
  Spot.create!(params)
end

def delete_post(spot_id)
  delete :destroy, params: { :id => spot_id }
end

def update_spot(spot_id)
	 put :update, :params => { :id => spot_id, :spot => {
	 	spot: 'test2',
		time: 'now2',
		location: 'close2',
		info: 'test2',
		user_id: user.id,
		username: user.username,
		time_start: '7',
		time_end: '8'
	  } }
end

def params
	 {
	spot: 'test',
	time: 'now',
	location: 'close',
	info: 'test',
	user_id: user.id,
	username: user.username,
	time_start: Time.now,
	time_end: Time.now,
  datestring: Time.now
	}
end

# def create_follow
# 	 allow(controller).to receive(:current_user).and_return(user)
# 	 user.follow(test_spot)
# end
