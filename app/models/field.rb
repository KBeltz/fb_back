class Field < ApplicationRecord
  self.table_name = 'app_bldr_fields'
  has_many :submissions
  has_many :template_fields
end
