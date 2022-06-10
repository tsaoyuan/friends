class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :email
      t.string :tel
      t.string :twitter

      t.timestamps
    end
  end
end
