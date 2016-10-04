class SubmissionSerializer < ActiveModel::Serializer
  attributes :id, :submission_text, :update_by, :insert_by, :update_time, :insert_time

  belongs_to :form
  belongs_to :field
end
