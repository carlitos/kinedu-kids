class Api::V1::ActivityLogsController < Api::V1::BaseController

  before_action :set_activity_log, only: [:show, :edit, :update]

  def index
      render json: ActivityLog.all, each_serializer: Api::V1::ActivityLogSerializer, root: false
  end

  def show
    @activity_log = ActivityLog.find(params[:id])
    render(
      json: Api::V1::ActivityLogSerializer.new(@activity_log).to_json,
      status: 200,
      location: api_v1_activity_log_path(@activity_log.id)
    )
  end

  def create
    @activity_log = ActivityLog.new(create_params)
    return api_error(status: 422, errors: @activity_log.errors) unless @activity_log.valid?
    @activity_log.save!
    render(
        json: Api::V1::ActivityLogSerializer.new(@activity_log).to_json,
        status: 201,
        location: api_v1_activity_log_path(@activity_log.id)
    )
  end


  def update
    if @activity_log.update(create_params)
      render(
          json: Api::V1::ActivityLogSerializer.new(@activity_log).to_json,
          status: 200,
          location: api_v1_activity_log_path( @activity_log.id )
        )
    else
      render json: {
        error: "The stop time must be after the start time",
        status: 400
      }, status: 400
    end
  end


  private

  def set_activity_log
    @activity_log = ActivityLog.find(params[:id])
  end

  def create_params
    params.require(:activity_log).permit(
      :id, :baby_id, :assistant_id, :activity_id, :start_time, :stop_time, :transcript, :comments
    ).delete_if{ |k,v| v.nil?}
  end




end
