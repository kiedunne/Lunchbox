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

def create_comment
  Comment.create!({
    content: "test",
    user_id: user.id,
    spot_id: test_spot.id,
    username: user.username,
    created_at: Time.now,
    updated_at: Time.now,
   })
end

def delete_comment(comment_id)
  delete :destroy, params: { :id => comment_id }
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
