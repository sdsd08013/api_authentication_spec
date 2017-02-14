FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "test_#{n}@company.jp"}
    sequence(:password) { |n| "#{n}aaaaaaaa"}
  end
end
