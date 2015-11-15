class CreateAlexes < ActiveRecord::Migration
  def change
    create_table :alexes do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps null: false
    end
  end
end
