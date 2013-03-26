class Expense < ActiveRecord::Base
  attr_accessible :created_on, :description, :price, :quantity, :event_id
  belongs_to :event
end
