class Api::V1::BabiesController < Api::V1::BaseController

  def index
      render json: Baby.all, each_serializer: Api::V1::BabySerializer, root: false
  end


  private

  def set_baby
    @baby = Baby.find(params[:id])
  end

  def create_params
    params.require(:baby).permit(
      :id, :name, :birthday, :mother_name, :address, :phone
    ).delete_if{ |k,v| v.nil?}
  end

end
