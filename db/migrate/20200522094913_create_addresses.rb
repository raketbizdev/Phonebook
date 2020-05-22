class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :label
      t.text :my_address
      t.belongs_to :contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
