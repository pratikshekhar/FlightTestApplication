class AddFlightnotesToTodoLists < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :flightnotes, :text
  end
end
