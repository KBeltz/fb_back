class Template < ApplicationRecord
  self.table_name = 'app_bldr_templates'

  has_many :forms
  has_many :template_fields
  has_many :submissions, through: :forms
  
  belongs_to :user, :foreign_key => "insert_by", :class_name => 'User'
end
