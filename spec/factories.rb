FactoryBot.define do

  factory :user do
    id { generate :user_id }
    email { generate :email }
    password { "password" }
    username { "John" }
  end
  
  sequence :email do |n|
    "email#{n}@gmail.com"
  end

  sequence :user_id do |n|
    n
  end
end
