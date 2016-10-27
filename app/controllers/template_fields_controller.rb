class TemplateFieldsController < ApplicationController
  before_action :set_template_field, only: [:show, :update, :destroy]

  # GET /template_fields
  def index
    @template_fields = TemplateField.all

    render json: @template_fields
  end

  # GET /template_fields/1
  def show
    render json: @template_field
  end

  # POST /template_fields
  def create
    puts "template_field_params: " + template_field_params.to_s
    @template_field = TemplateField.new(template_field_params)

    if @template_field.save
      render json: @template_field, status: :created, location: @template_field
    else
      puts "Errors: " + @template_field.errors.full_messages.first
      render json: @template_field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /template_fields/1
  def update
    if @template_field.update(template_field_params)
      render json: @template_field
    else
      render json: @template_field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /template_fields/1
  def destroy
    @template_field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_field
      @template_field = TemplateField.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def template_field_params
      # be sure that unless you have column name/alias weirdness, references to parent/child objects should be ":template" not ":template_id"
      ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [:template, :field, :order_num, :update_by, :insert_by, :update_time, :insert_time])
    end
end
