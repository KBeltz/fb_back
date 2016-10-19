module Error
  module ErrorHandler
    # self.included is invoked when the class that includes this module is run (http://apidock.com/ruby/Module/included)
    def self.included(clazz)
      clazz.class_eval do
        rescue_from ActiveRecord::RecordNotFound do |exception|
          respond(:record_not_found, 404, exception.to_s)
        end
        rescue_from CustomError do |exception|
          byebug
          respond(exception.error, exception.status, exception.message.to_s)
        end
        rescue_from StandardError do |exception|
          respond(:standard_error, 500, exception.to_s)
        end
      end
    end

    private

    def respond(_error, _status, _message)
      json = Helpers::Render.json(_error, _status, _message)
      render json: json, status: _status
    end
  end
end