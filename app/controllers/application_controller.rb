class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  include Error::ErrorHandler
end
