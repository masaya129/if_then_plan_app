FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'aaaa11'}
    password_confirmation {password}
  end
end