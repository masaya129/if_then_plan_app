class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :if_task,      null: false
      t.string :then_task,    null: false
      t.string :title,        null: false
      t.string :unit,         null: false
      t.integer :month_goal,  null: false
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
