FactoryBot.define do
  factory :event do
    association :user
    title { 'Событие ' }
    description { 'Встреча' }
    address { 'Москва Кремль' }
    datetime { DateTime.parse('25.03.2021 15:00') }
  end
end