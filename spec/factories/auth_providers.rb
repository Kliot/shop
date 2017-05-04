FactoryGirl.define do
  factory :auth_provider do
    user
    provider 'facebook'
    uid '12313'
  end
end
