def create_spot
  Spot.create!(params)
end

def delete_post
  delete :destroy, params: { id: post_in_db.id }
end

def params
	 {
	spot: 'test', 
	time: 'now', 
	location: 'close', 
	info: 'test',
	user_id: user.id, 
	username: user.username, 
	time_start: '6', 
	time_end: '7'
	}
end
