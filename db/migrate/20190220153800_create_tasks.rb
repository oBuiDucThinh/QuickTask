class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :description
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
