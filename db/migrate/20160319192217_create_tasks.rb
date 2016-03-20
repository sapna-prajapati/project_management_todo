class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :project, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
