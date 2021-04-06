class Task < ApplicationRecord
  belongs_to :user
  has_many :records

  with_options presence: true do
    validates :if_task
    validates :then_task
    validates :title
    validates :unit
    validates :month_goal, numericality: {with: /\A[0-9]+\z/}
  end
  
end
