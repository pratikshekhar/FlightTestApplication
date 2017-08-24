class AddWeatherToTodoLists < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :weather, :string
  end
end
