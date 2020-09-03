class AddColumnToTodo < ActiveRecord::Migration[6.0]
  def change
    add_reference :todos, :User, foreign_key: true
  end
end
