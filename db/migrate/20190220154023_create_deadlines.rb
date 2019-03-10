class CreateDeadlines < ActiveRecord::Migration[5.2]
  def change
    create_table :deadlines do |t|
      t.datetime :end_date, nill: false
      t.integer :change_count, limit: 1
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
