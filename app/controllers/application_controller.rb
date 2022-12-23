class ApplicationController < ActionController::API
    include ActionController::Cookies

    rescue_from ActiveRecord::RecordInvalid, with: :invalid_input
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
  
  before_action :authorize
  
    private
  
    def invalid_input(invalid)
      render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
  
    def authorize
      render json: {errors: ["Not authorized"]}, status: :unauthorized unless session.include? :user_id
     end

     def not_found(error)
        render json: {error: ["#{error.model} not found"]}, status: :not_found
     end

end
