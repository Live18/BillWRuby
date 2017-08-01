FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@generateduser.com" }
  factory :user do
    email
    password '12345678'
    first_name 'Generated'
    last_name 'User'
    admin false
  end

  factory :admin, parent: :user do
    id
    admin true
  end
  
end