FactoryGirl.define do
  factory :user do
    login "hack68"

    trait :with_name do
      name "Mr. Smith"
    end
  end
end
