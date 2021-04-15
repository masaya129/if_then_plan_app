FactoryBot.define do
  factory :task do
    if_task               {'朝起きたら'}
    then_task             {'勉強する'}
    title                 {'朝活'}
    unit                  {'時間'}
    month_goal            {2}
  end
end
