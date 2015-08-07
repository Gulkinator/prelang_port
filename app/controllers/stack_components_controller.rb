class StackComponentsController < ApplicationController
  before_action :set_stack_component, only: [:show, :edit, :update, :destroy]

  # GET /stack_components
  # GET /stack_components.json
  def index
    @stack_components = StackComponent.all
  end

  # GET /stack_components/1
  # GET /stack_components/1.json
  def show
  end

  # GET /stack_components/new
  def new
    @stack_component = StackComponent.new
  end

  # GET /stack_components/1/edit
  def edit
  end

  # POST /stack_components
  # POST /stack_components.json
  def create
    @stack_component = StackComponent.new(stack_component_params)

    respond_to do |format|
      if @stack_component.save
        format.html { redirect_to @stack_component, notice: 'Stack component was successfully created.' }
        format.json { render :show, status: :created, location: @stack_component }
      else
        format.html { render :new }
        format.json { render json: @stack_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stack_components/1
  # PATCH/PUT /stack_components/1.json
  def update
    respond_to do |format|
      if @stack_component.update(stack_component_params)
        format.html { redirect_to @stack_component, notice: 'Stack component was successfully updated.' }
        format.json { render :show, status: :ok, location: @stack_component }
      else
        format.html { render :edit }
        format.json { render json: @stack_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stack_components/1
  # DELETE /stack_components/1.json
  def destroy
    @stack_component.destroy
    respond_to do |format|
      format.html { redirect_to stack_components_url, notice: 'Stack component was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stack_component
      @stack_component = StackComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stack_component_params
      params.require(:stack_component).permit(:name, :portfolio_item_id)
    end
end
