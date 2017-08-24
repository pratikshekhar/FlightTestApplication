class AddObserverToTodoLists < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :observer, :string
  end
end
