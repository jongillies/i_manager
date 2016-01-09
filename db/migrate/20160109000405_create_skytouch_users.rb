class CreateSkytouchUsers < ActiveRecord::Migration
  def change
    create_table :skytouch_users do |t|
      t.string :uid
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
