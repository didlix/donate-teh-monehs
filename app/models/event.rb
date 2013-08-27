class Event < ActiveRecord::Base
  attr_accessible :description, :end, :start, :title
  validates :title, presence: true
  validates :description, presence: true
  validates_datetime :start
  validates_datetime :end, allow_nil: true
end
