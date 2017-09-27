class Api::ListsController < ApiController
  before_action :authenticated?
  before_action :set_user

  def index
    lists = @user.lists
    render json: lists, each_serializer: ListSerializer
  end

  def create
    list = List.new(list_params)
    list.user_id = @user.id

    if list.save
      render json: list
    else
      render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    list = List.find(params[:id])
    if list.update(list_params)
      render json: list
    else
      render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    begin
      list = List.find(params[:id])
      list.destroy
      render json: {}, status: :no_content
    rescue ActiveRecord::RecordNotFound
      render :json => {}, :status => :not_found
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :private)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

end
