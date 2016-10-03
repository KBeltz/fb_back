class Form < ApplicationRecord
  has_many :submissions
  
  belongs_to :template
  belongs_to :user, :foreign_key => "recipient_user_id"
end
