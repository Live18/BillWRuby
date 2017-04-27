FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@generateduser.com" }
  factory :user do
    email
    password '12345678'
    first_name 'Generated'
    last_name 'User'
    admin false
  end

  factory :admin, class: User do
    email
    password 'noah04'
    admin true
    first_name 'Bill'
    last_name 'Wagner'
  end
  
end