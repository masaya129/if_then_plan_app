class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.integer :count, null: false
      t.text :memo
      t.datetime :start_time
      t.references :user, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true
      t.timestamps
    end
  end
end
