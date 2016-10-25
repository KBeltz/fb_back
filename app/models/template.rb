class Template < ApplicationRecord
  self.table_name = 'app_bldr_templates'

  # alias_attribute :new_name_for_attribute, :name_created_by_database_table_schema
  alias_attribute :insert_by_id, :insert_by

  has_many :forms
  has_many :template_fields
  has_many :submissions, through: :forms

  # This has nothing to do with attributes; refers specifically to the database column
  # belongs_to :lowercase_class_name, :foreign_key => "column_in_database", :class_name => "Capitalized_class_name"
  belongs_to :user, :foreign_key => "insert_by", :class_name => 'User'
end
