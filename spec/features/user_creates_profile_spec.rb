require 'rails_helper'

feature "user profiles" do
  let(:user) {FactoryGirl.create(:user)}
  
  before do 
    login_as(user, scope: :user)
  end

  scenario "user creates profile" do   
    visit new_user_profile_path(user)
    expect(page).to have_content("Create a Member Profile")
    fill_in "profile[bio]", with: Faker::Lorem.paragraph(2)
    fill_in "profile[city]", with: "Stamford"
    select "Connecticut"
    # fill_in "profile[state]", with: Faker::Address.state
    fill_in "profile[zipcode]", with: "06902"
    select "dog"
    select "cat" 
    click_button "Create Profile"
		expect(page).to have_content("Profile was successfully created.")
		
		profile = Profile.last
		expect(profile.pets).to eq ["dog", "cat"]
    expect(profile.city).to eq "Stamford"
    expect(profile.state).to eq 'CT'
    expect(profile.zipcode).to eq "06902"
  end

  scenario "user sees profile error message if no bio" do
    visit new_user_profile_path(user)
    expect(page).to have_content("Create a Member Profile")

    click_button "Create Profile"
		
		expect(Profile.count).to eq 0
		expect(page).to have_content("Create a Member Profile")
		expect(page).to have_content("Bio can't be blank")
  end

end