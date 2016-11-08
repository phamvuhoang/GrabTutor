class CreateLessions < ActiveRecord::Migration[5.0]
  def change
    create_table :lessions do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :subject, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
