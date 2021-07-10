class StoresController < ApplicationController
  before_action :set_store, only: [:show, :update, :destroy]
     
  # GET /store
  def index
      @stores = Store.all
      render json: @stores, status: :ok
      
  end

  # /GET/store/{id}
  def show
      render json: @store, status: :ok
  end

  # POST /store
  def create
      @store = Store.create!(store_params)
      render json: @store, status: :created
  end

  # PUT /stores/{:id}
  def update
      if @store.update!(store_params)
        render json: { success: true }
      else
        render json: { success: false }
      end
  end
  
  def destroy
    if @store.destroy
        render json: { success: true }
    else
        render json: { success: false }
    end
  end

  private

  def store_params
      params.require(:store).permit(:name, :address, :email, :phone)
      
  end

  def set_store
    @store = Store.find(params[:id])
  end



end
