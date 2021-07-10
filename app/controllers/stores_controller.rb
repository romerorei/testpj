class StoresController < ApplicationController
  before_action :set_store, only: [:show, :update, :destroy]
     
  rescue_from ActiveRecord::RecordNotFound do |e|
    render json: {error: e.message}, status: :not_found
  end

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
      @store = Store.new(store_params)

      if @store.save
        render json: @store, status: :created, location: @store
      else
        render json: @store.errors, status: :unprocessable_entity
      end
  end

  # PUT /stores/{:id}
  def update
      if @store.update!(store_params)
        render json: @store
      else
        render json: @store.errors, status: :unprocessable_entity
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
