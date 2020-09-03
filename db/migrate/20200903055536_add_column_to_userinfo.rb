class AddColumnToUserinfo < ActiveRecord::Migration[6.0]
  def change
    add_reference :userinfos, :User, null: false, foreign_key: true
  end
end
