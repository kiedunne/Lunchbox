require 'rails_helper'

RSpec.describe Follow, type: :model do
	 describe "belongies" do
	 	 it { should belong_to(:followable) }
	 	 it { should belong_to(:follower) }
	 end
end
