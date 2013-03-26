class Donation < ActiveRecord::Base
  attr_accessible :amount, :email, :name, :twitter, :created_on, :event_id
  belongs_to :event
end
