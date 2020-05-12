class School < ApplicationRecord
  has_many :teachers
  validates :name, uniqueness: true, presence: true
end
