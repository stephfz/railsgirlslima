class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :name
      t.string :twitter
      t.string :email
      t.float :amount
      t.date :created_on
      t.integer :event_id

      t.timestamps
    end
  end
end
