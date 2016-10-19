module Error
  module ErrorHandler
    # self.included is invoked when the class that includes this module is run (http://apidock.com/ruby/Module/included)
    def self.included(clazz)
      clazz.class_eval do
        rescue_from ActiveRecord::RecordNotFound do |e|
          respond(:record_not_found, 404, e.to_s)
        end
        # rescue_from CustomError do |e|
        #   byebug
        #   respond(e.error, e.status, e.message.to_s)
        # end
        # rescue_from StandardError do |e|
        #   # byebug
        #   respond(:standard_error, 500, e.to_s)
        # end
      end
    end

    private

    def respond(_error, _status, _message)
      json = Helpers::Render.json(_error, _status, _message)
      render json: json, status: _status
    end
  end
end