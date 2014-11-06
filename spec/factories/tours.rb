FactoryGirl.define do
  factory :tour do
    name { "Tour to #{Faker::Address.city}, #{Faker::Address.country}" }
    description { Faker::Lorem.sentence(15, true, 15) }
    state 0
    city
  end

end
