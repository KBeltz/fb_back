module Error
  module ErrorHandler
    # self.included is invoked when the class that includes this module is run (http://apidock.com/ruby/Module/included)
    def self.included(clazz)
      # http_errors = [
      #   EOFError,
      #   Errno::ECONNRESET,
      #   Errno::EINVAL,
      #   Net::HTTPBadResponse,
      #   Net::HTTPHeaderSyntaxError,
      #   Net::ProtocolError,
      #   Timeout::Error,
      # ]
      clazz.class_eval do
        # rescue_from CustomError do |exception|
        #   respond(exception.error, exception.status, exception.message.to_s)
        # end
        rescue_from StandardError do |exception|
          respond(:standard_error, 500, exception.to_s)
        end
        rescue_from ActiveRecord::RecordNotFound do |exception|
          respond(:record_not_found, 404, exception.to_s)
        end
        # rescue_from *http_errors do |exception|
        #   respond(:standard_error, :status_code, exception.to_s)
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