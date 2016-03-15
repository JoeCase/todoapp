class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|

      t.references :list, null: false, index: true
      t.references :user, null: false, index: true

      t.string  :title, null: false
      t.integer :status, null: false
      t.integer :priority
      t.date    :due_date
      t.text    :notes

      t.timestamps null: false
    end
  end
end
