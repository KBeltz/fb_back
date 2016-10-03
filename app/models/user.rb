class User < ApplicationRecord
  has_many :templates
  has_many :forms
  has_many :template_fields, through: :templates
  has_many :submissions, through: :forms
end
