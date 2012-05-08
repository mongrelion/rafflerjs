class Entry < ActiveRecord::Base
  # - Accessible Attributes - #
  attr_accessible :name, :winner

  # - Validations - #
  validates_presence_of :name
end
