FactoryBot.define do
  factory :user do
    email { "user@mail#{rand(0..999)}.com" }
    password { "password" }
    password_confirmation { "password" }
  end
end
