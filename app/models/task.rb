class Task < ApplicationRecord
  belongs_to :user
  has_many :records

  with_options presence: true do
    validates :if_task
    validates :then_task
    validates :title
    validates :unit
    validates :month_goal, numericality: {with: /^[0-9]+$/, message: '習慣化タスクの目標記録数値は半角数字で入力してください'}
  end
  
end
