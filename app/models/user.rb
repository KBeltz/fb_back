class User < ApplicationRecord
  has_many :templates, :foreign_key => "insert_by", :class_name => 'Template'
  has_many :forms, :foreign_key => "recipient_user_id", :class_name => 'Form'
  has_many :template_fields, through: :templates
  has_many :submissions, through: :forms

  def self.filter_users(parameters)
    if parameters["isComplete"] == 'N'
      forms = Form.where( is_complete: 'N' )
      @users = []
      forms.each do |form|
        @users << form.user
      end
      @users.uniq
    else
      @users = User.all
    end
    return @users
  end

end
