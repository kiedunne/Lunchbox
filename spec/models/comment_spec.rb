require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "belongies" do
    it { should belong_to(:user) }
    it { should belong_to(:spot) }
  end
end
