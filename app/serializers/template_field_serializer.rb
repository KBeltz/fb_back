class TemplateFieldSerializer < ActiveModel::Serializer
  attributes :id, :order_num, :update_by, :insert_by, :update_time, :insert_time

  belongs_to :template
  belongs_to :field
end
