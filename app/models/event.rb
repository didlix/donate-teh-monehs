class Event < ActiveRecord::Base
  attr_accessible :description, :end, :start, :title
end
