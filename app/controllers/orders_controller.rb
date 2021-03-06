class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy]

  rescue_from ActiveRecord::RecordNotFound do |e|
    render json: {error: e.message}, status: :not_found
  end

  # GET /orders
  def index
    @orders = Order.all

    render json: @orders.includes(:store, :products), status: :ok
  end

  # GET /orders/1
  def show
    render json: @order
  end

  # POST /orders
  def create
    
    @order = Order.create(order_params)

    # products = Product.where(id: params["product_ids"])
    # @order.products << products

    if @order.save
      render json: @order, status: :created, location: @order
      OrderReportJob.perform_later(@order.id)
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  def destroy
    if @order.destroy
      render json: { success: true }
    else
        render json: { success: false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_params
      params.require(:order).permit(:store_id,  order_products_attributes: [
        :product_id
      ])
    end
end
