class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :is_tutor
      t.boolean :approved
      t.datetime :approved_at
      t.boolean :banned
      t.datetime :banned_at
      t.boolean :is_admin

      t.timestamps
    end
  end
end
