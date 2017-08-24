class AddOperatorToTodoLists < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :operator, :string
  end
end
