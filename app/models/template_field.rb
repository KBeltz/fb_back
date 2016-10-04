class TemplateField < ApplicationRecord
  self.table_name = 'app_bldr_template_fields'

  belongs_to :template
  belongs_to :field
end
