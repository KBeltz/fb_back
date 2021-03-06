class FieldsController < ApplicationController
  before_action :set_field, only: [:show, :update, :destroy]

  # GET /fields
  def index
    @fields = Field.all

    render json: @fields
  end

  # GET /fields/1
  def show
    render json: @field
  end

  # POST /fields
  def create
    @field = Field.new(field_params)

    if @field.save
      render json: @field, status: :created, location: @field
    else
      render json: @field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fields/1
  def update
    if @field.update(field_params)
      render json: @field
    else
      render json: @field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fields/1
  def destroy
    @field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_field
      @field = Field.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def field_params
      # params.require(:field).permit(:field_name, :update_by, :insert_by, :update_time, :insert_time)
      ActiveModelSerializers::Deserialization.jsonapi_parse!(params, only: [:field_name, :update_by, :insert_by, :update_time, :insert_time])
    end
end
