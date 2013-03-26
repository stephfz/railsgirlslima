class Event < ActiveRecord::Base
  attr_accessible :day, :goal, :name
  has_many :expenses
  has_many :donations
end
