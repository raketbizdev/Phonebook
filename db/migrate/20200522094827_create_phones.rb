class CreatePhones < ActiveRecord::Migration[6.0]
  def change
    create_table :phones do |t|
      t.string :label
      t.string :phone_number
      t.belongs_to :contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
