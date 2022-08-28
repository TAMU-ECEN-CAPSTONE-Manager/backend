class RequestinvsController < ApplicationController
  before_action :current_request, only: [:show, :destroy]
  def index
    @requestinvs = Requestinv.all
  end

  def show
  end

  def new
    @requestinv = Requestinv.new
  end

  def create
    requestinv = Requestinv.create(requestinv_params)
    flash[:notice] = "Request Successfully Created"
    redirect_to items_path
  end

  def destroy
    @requestinv.destroy
    flash[:notice] = "#{@requestinv.name} deleted"
    redirect_to requestinvs_index_path
  end

  def borrowed
    @requestinvs = Requestinv.where(:email => session[:user_email])
  end

  private

  def requestinv_params
    params.require(:requestinv).permit(:name, :number, :email, :url, :team_name, :cost_per_item, :total_cost, :issued)
  end

  def current_request
    id = params[:id]
    if id != "borrowed"
      @requestinv = Requestinv.find(id)
    end
  end
end
