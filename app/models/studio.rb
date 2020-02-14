class Studio < ApplicationRecord
  validates_presence_of :name
  has_many :actors, through: :movies
  has_many :movies
end
