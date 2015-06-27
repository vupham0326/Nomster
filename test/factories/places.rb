FactoryGirl.define do
  factory :place do
    name "Rico's Taco"
    description "Good Taco"
    address "123 abc rd, san jose, ca"
    latitude(42.3631519)
    longitude(-71.056098)
    association :user
  end
end