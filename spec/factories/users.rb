FactoryGirl.define do
  factory :user do
    email    Faker::Internet.email
    password Faker::Internet.password(8)
  end

  factory :user_admin, parent: :user do
    role     'admin'
  end

  factory :user_manager, parent: :user do
    role     'manager'
  end
end
