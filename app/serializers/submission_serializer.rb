class SubmissionSerializer < ActiveModel::Serializer
  attributes :id, :update_by, :insert_by, :update_time, :insert_time
  attributes :submission_text

  belongs_to :form
  belongs_to :field
end
