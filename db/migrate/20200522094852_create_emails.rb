class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.string :label
      t.string :my_email
      t.belongs_to :contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
