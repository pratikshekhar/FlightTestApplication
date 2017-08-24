class RemoveFlightnotesFromTodoLists < ActiveRecord::Migration[5.0]
  def change
    remove_column :todo_lists, :flightnotes, :test
  end
end
