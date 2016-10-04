# class TemplateSerializer < ActiveModel::Serializer
#   attributes :id, :template_name, :update_by, :update_time, :insert_by, :insert_time

#   belongs_to :user, :foreign_key => "insert_by", :class_name => 'User'

#   has_many :forms
#   has_many :template_fields
# end
