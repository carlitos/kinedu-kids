class Api::V1::ActivityLogsController < Api::V1::BaseController

  def index
      render json: ActivityLog.all, each_serializer: Api::V1::ActivityLogSerializer, root: false
  end




end
