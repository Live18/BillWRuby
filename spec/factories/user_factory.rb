FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  factory :user do
    email
    password 'noah04'
    first_name 'Bill'
    last_name 'Wagner'
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