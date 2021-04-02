class Task < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :if_task
    validates :then_task
    validates :title
    validates :unit
    validates :month_goal
  end
  
end
