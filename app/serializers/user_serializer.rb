class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :middle_name, :gender, :address_line_one, :address_line_two, :state, :city, :unit_number, :zip_code, :birthdate, :personal_phone, :ssn, :update_by, :update_time, :insert_by, :insert_time

  has_many :templates, :foreign_key => "insert_by", :class_name => 'Template'
  has_many :forms, :foreign_key => "recipient_user_id", :class_name => 'Form'
end
