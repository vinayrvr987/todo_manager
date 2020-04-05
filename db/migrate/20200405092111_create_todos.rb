class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.text :todo_text
      t.date :due_date
      t.boolean :completed
    end
  end
end
