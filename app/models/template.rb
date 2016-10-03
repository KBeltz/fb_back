class Template < ApplicationRecord
  has_many :forms
  has_many :template_fields
  has_many :submissions, through: :forms
  belongs_to :user, :foreign_key => "insert_by"
end
