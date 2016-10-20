class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.filter_users(params)

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)
    # byebug

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [:first_name, :last_name, :middle_name, :gender, :address_line_one, :address_line_two, :unit_number, :state, :city, :zip_code, :birthdate, :personal_phone, :ssn, :update_by, :update_time, :insert_by, :insert_time])

        # ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [:template_name, :insert_by, :update_by, :update_time, :insert_time, :attributes, :relationships, :data, :type])
    end
end
