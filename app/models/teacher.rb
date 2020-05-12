class Teacher < ApplicationRecord
  belongs_to :school
  accepts_nested_attributes_for :school
end
