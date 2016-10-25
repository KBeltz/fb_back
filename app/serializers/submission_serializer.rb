class SubmissionSerializer < ActiveModel::Serializer
  attributes :id, :update_by, :insert_by, :update_time, :insert_time
  attributes :submission_text

  has_one :form
  has_one :field
end
