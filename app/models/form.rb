class Form < ApplicationRecord
  self.table_name = 'app_bldr_forms'

  has_many :submissions
  
  belongs_to :template
  belongs_to :user, :foreign_key => "recipient_user_id", :class_name => 'User'
end
