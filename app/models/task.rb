class Task < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :unit
  belongs_to :user

  with_options presence: true do
    validates :if_task
    validates :then_task
    validates :title
    validates :unit, numericality: { other_than: 1 } 
    validates :month_goal
  end
  
end
