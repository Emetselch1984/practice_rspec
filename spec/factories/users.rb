FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "member#{n}@example.jp" }
    name { "山田" }
  end
end
