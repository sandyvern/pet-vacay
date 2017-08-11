require 'rails_helper'

feature "user registers for site" do

  scenario "user registers" do
    visit root_path
    expect(page).to have_text("Welcome Travelling Pet Lovers!")
    click_link "Become A user"
    fill_in_registration_fields
    expect(page).to have_content("Welcome! You have signed up successfully.")
  end

  def fill_in_registration_fields
    fill_in "user[name]", with: Faker::Name.name 
    # fill_in "user[first_name]", with: Faker::Name.first_name 
    # fill_in "user[last_name]", with: Faker::Name.last_name 
    fill_in "user[email]", with: Faker::Internet.email
    fill_in "user[password]", with: Devise.friendly_token.first(8)
    click_button "Sign up"
  end
end