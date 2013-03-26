class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :description
      t.integer :quantity
      t.float :price
      t.date :created_on
      t.integer :event_id

      t.timestamps
    end
  end
end
