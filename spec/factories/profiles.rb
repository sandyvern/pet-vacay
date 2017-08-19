FactoryGirl.define do
  factory :profile do
    user nil
    bio "MyText"
    city "MyString"
    state "MyString"
    zipcode "MyString"
    pet "MyString"
    user_id 1
  end
end

# Faker::Lorem.paragraph #=> "Neque dicta enim quasi. Qui corrupti est quisquam. Facere animi quod aut. Qui nulla consequuntur consectetur sapiente."
# Faker::Address.city #=> "Imogeneborough"
# Faker::Address.state #=> "California"
# Faker::Address.zip_code #=> "58517"
