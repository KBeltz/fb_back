class Submission < ApplicationRecord
  self.table_name = 'app_bldr_submissions'
  belongs_to :form
  belongs_to :field
end
