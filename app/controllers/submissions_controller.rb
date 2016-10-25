class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :update, :destroy]

  # GET /submissions
  def index
    @submissions = Submission.all

    render json: @submissions
  end

  # GET /submissions/1
  def show
    render json: @submission
  end

  # POST /submissions
  def create
    @submission = Submission.new(submission_params)

    if @submission.save
      render jsonapi: @submission, status: :created, location: @submission
    else
      render jsonapi: @submission.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /submissions/1
  def update
    if @submission.update(submission_params)
      render json: @submission
    else
      render json: @submission.errors, status: :unprocessable_entity
    end
  end

  # DELETE /submissions/1
  def destroy
    @submission.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submission
      @submission = Submission.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def submission_params
      # params.require(:submission).permit(:form_id, :field_id, :submission_text, :insert_by, :update_by, :insert_time, :update_time)
      ActiveModelSerializers::Deserialization.jsonapi_parse!(params)
    end
end
