FactoryBot.define do
  factory :user do
    name { "Man_#{rand(999)}" }
    sequence(:email) { |n| "somebody_#{n}@test.com" }
    after(:build) { |u| u.password_confirmation = u.password = "123456"}
  end
end