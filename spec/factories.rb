FactoryBot.define do
  factory :comment do
    content { "MyText" }
    user { nil }
    spot { nil }
  end

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
