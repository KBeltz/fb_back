class Form < ApplicationRecord
  belongs_to :template
  belongs_to :user, :foreign_key => "recipient_user_id"
  has_many :submissions
end
