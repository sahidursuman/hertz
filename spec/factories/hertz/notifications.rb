FactoryGirl.define do
  factory :notification, class: 'Hertz::Notification' do
    type 'Hertz::Notification'
    association :receiver, factory: :user, strategy: :build

    trait :read do
      read_at { Time.zone.now }
    end
  end
end
