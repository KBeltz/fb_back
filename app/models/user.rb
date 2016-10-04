class User < ApplicationRecord
  has_many :templates, :foreign_key => "insert_by", :class_name => 'User'
  has_many :forms, :foreign_key => "recipient_user_id", :class_name => 'User'
  has_many :template_fields, through: :templates
  has_many :submissions, through: :forms
end
