class Task < ApplicationRecord
  belongs_to :todo_list, optional: true


  Status_List = ["Select an option ", "Good", "Minor", "Major"]
end
