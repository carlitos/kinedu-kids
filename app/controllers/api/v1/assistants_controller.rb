class Api::V1::AssistantsController < Api::V1::BaseController

  def index
      render json: Assistant.all, each_serializer: Api::V1::AssistantSerializer, root: false
  end

end
