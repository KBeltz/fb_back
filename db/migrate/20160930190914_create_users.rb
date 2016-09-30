class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :gender
      t.string :address_line_one
      t.string :address_line_two
      t.string :unit_number
      t.string :state
      t.string :city
      t.string :zip_code
      t.date :birthdate
      t.string :personal_phone
      t.string :ssn
      t.integer :update_by
      t.datetime :update_time
      t.integer :insert_by
      t.datetime :insert_time

      t.timestamps
    end
  end
end
