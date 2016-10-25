class FormSerializer < ActiveModel::Serializer
  attributes :id, :update_by, :update_time, :insert_by, :insert_time, :date_filled_out, :is_complete

  has_one :template
  # belongs_to :user, :foreign_key => "recipient_user_id", :class_name => 'User'
  has_one :user
  has_many :submissions
end
