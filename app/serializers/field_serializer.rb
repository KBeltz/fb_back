class FieldSerializer < ActiveModel::Serializer
  attributes :id, :field_name, :update_by, :insert_by, :update_time, :insert_time

  has_many :submissions
  has_many :template_fields
end
