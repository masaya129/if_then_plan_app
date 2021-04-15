class Record < ApplicationRecord
  belongs_to :user
  belongs_to :task

  validates :count, presence: true, numericality: {with: /\A[0-9]+\z/, message: 'は半角数字で入力してください'}
  validates :start_time, presence: true
end
