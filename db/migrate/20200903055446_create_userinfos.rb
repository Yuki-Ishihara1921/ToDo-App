class CreateUserinfos < ActiveRecord::Migration[6.0]
  def change
    create_table :userinfos do |t|
      t.string :name
      t.text :profile

      t.timestamps
    end
  end
end
