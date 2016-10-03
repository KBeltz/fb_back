class Field < ApplicationRecord
  has_many :submissions
  has_many :template_fields
end
