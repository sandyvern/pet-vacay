require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe "validations" do
	 it "has a valid factory" do
	   expect(FactoryGirl.create(:profile)).to be_valid
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
	
	describe "#self.pets_options" do
		it "returns array of available pets for form" do
			expect(Profile.pets_options).to eq ["dog", "cat", "bird", "rabbit", "guinea pig", "hampster", "fish", "ferret", "rodent", "horse", "livestock", "other"]
		end
	end
end
