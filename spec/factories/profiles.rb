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
