require 'rails_helper'

RSpec.describe Spot, type: :model do
	 describe "belongies" do
	 	 it { should belong_to(:user) }
	 end
end
