class TemplateSerializer < ActiveModel::Serializer
  attributes :id, :template_name, :update_by, :update_time, :insert_by_id, :insert_time

  belongs_to :insert_by_id, :foreign_key => "insert_by", :class_name => 'User'

  has_many :forms
  has_many :template_fields
end
