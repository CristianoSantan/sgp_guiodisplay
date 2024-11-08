class EnterprisesController < ApplicationController
  before_action :set_enterprise, only: %i[ show edit update destroy ]

  # GET /enterprises
  def index
    @enterprises = Enterprise.all
  end

  # GET /enterprises/1
  def show
  end

  # GET /enterprises/new
  def new
    @enterprise = Enterprise.new
  end

  # GET /enterprises/1/edit
  def edit
  end

  # POST /enterprises
  def create
    @enterprise = Enterprise.new(enterprise_params)

    if @enterprise.save
      redirect_to @enterprise, notice: "Enterprise was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /enterprises/1
  def update
    if @enterprise.update(enterprise_params)
      redirect_to @enterprise, notice: "Enterprise was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /enterprises/1
  def destroy
    @enterprise.destroy!
    redirect_to enterprises_url, notice: "Enterprise was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enterprise
      @enterprise = Enterprise.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enterprise_params
      params.require(:enterprise).permit(:name, :email, :phone, :address)
    end
end
