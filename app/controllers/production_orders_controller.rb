class ProductionOrdersController < ApplicationController
  before_action :set_production_order, only: %i[ show edit update destroy ]

  # GET /production_orders
  def index
    @production_orders = ProductionOrder.all
  end

  # GET /production_orders/1
  def show
  end

  # GET /production_orders/new
  def new
    @production_order = ProductionOrder.new
  end

  # GET /production_orders/1/edit
  def edit
  end

  # POST /production_orders
  def create
    @production_order = ProductionOrder.new(production_order_params)

    if @production_order.save
      redirect_to @production_order, notice: "Production order was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /production_orders/1
  def update
    if @production_order.update(production_order_params)
      redirect_to @production_order, notice: "Production order was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /production_orders/1
  def destroy
    @production_order.destroy!
    redirect_to production_orders_url, notice: "Production order was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_order
      @production_order = ProductionOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def production_order_params
      params.require(:production_order).permit(:start_date, :end_date, :status, :order_id, :machine_id)
    end
end
