class MachinesController < ApplicationController
  before_action :set_machine, only: %i[ show edit update destroy ]

  # GET /machines
  def index
    @machines = Machine.all
  end

  # GET /machines/1
  def show
  end

  # GET /machines/new
  def new
    @machine = Machine.new
  end

  # GET /machines/1/edit
  def edit
  end

  # POST /machines
  def create
    @machine = Machine.new(machine_params)

    if @machine.save
      redirect_to @machine, notice: "Machine was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /machines/1
  def update
    if @machine.update(machine_params)
      redirect_to @machine, notice: "Machine was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /machines/1
  def destroy
    @machine.destroy!
    redirect_to machines_url, notice: "Machine was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_machine
      @machine = Machine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def machine_params
      params.require(:machine).permit(:name, :machine_type, :status, :enterprise_id)
    end
end
