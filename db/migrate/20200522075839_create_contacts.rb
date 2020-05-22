class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :office_phone
      t.string :home_phone
      t.text :office_address
      t.text :home_address

      t.timestamps
    end
  end
end
