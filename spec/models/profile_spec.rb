require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe "validations" do
	 it "has a valid factory" do
	   expect(FactoryGirl.build(:profile)).to be_valid
	 end

	 it { should validate_presence_of(:bio) }
	 it { should validate_presence_of(:city) }
	 it { should validate_presence_of(:state) }
	 it { should validate_presence_of(:zipcode) }
	 it { should validate_presence_of(:user_id) }
	end

	describe "associations" do
	  it { should belong_to(:user) }
	end
end
