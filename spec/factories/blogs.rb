FactoryBot.define do
  factory :blog do
    title {"foo"}
    body {"bar"}
    association :user,
                factory: :user
  end
end
