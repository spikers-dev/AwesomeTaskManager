FactoryBot.define do
  factory :user do
    avatar
    email
    first_name
    last_name
    password
    type { '' }

    factory :admin do
      type { 'Admin' }
    end

    factory :developer do
      type { 'Developer' }
    end

    factory :manager do
      type { 'Manager' }
    end
  end
end
