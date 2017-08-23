FactoryGirl.define do
  factory :profile do
    user
    bio Faker::Lorem.paragraph
    city Faker::Address.city
    state Faker::Address.state
    zipcode Faker::Address.zip_code
    pets "MyString"
    # user_id 1
  end
end

# Faker::Lorem.paragraph #=> "Neque dicta enim quasi. Qui corrupti est quisquam. Facere animi quod aut. Qui nulla consequuntur consectetur sapiente."
# Faker::Address.city #=> "Imogeneborough"
# Faker::Address.state #=> "California"
# Faker::Address.zip_code #=> "58517"
# can be => zipcode Faker::Address.zip_code