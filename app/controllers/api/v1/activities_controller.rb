class Api::V1::ActivitiesController < Api::V1::BaseController

  def index
      render json: Activity.all, each_serializer: Api::V1::ActivitySerializer, root: false
  end

end
