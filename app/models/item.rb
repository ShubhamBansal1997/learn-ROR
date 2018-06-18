class Item < ApplicationRecord
  # model associations
  belongs_to :todo

  # validations
  validates_presence_of :name
end
