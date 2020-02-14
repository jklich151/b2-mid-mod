class Movie < ApplicationRecord
  validates_presence_of :name
  belongs_to :studio
  has_many :actors
end
