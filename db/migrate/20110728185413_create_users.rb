class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :auth_token
      t.string :oauth_access_huddle_token

      t.timestamps
    end
  end
end
