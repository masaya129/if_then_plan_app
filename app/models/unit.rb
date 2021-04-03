class Unit < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '分' },
    { id: 3, name: '時間'},
    { id: 4, name: '回'},
    { id: 5, name: 'ページ'}
  ]

  include ActiveHash::Associations
  has_many :tasks
  
end