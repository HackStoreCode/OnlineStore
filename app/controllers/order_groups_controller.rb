class OrderGroupsController < ApplicationController
  before_action :set_order_group, only: [:show, :edit, :update, :destroy]

  # GET /order_groups
  # GET /order_groups.json
  def index
    @order_groups = OrderGroup.all
  end

  # GET /order_groups/1
  # GET /order_groups/1.json
  def show
  end

  # GET /order_groups/new
  def new
    @order_group = OrderGroup.new
  end

  # GET /order_groups/1/edit
  def edit
  end

  # POST /order_groups
  # POST /order_groups.json
  def create
    @order_group = OrderGroup.new(order_group_params)

    respond_to do |format|
      if @order_group.save
        format.html { redirect_to @order_group, notice: 'Order group was successfully created.' }
        format.json { render :show, status: :created, location: @order_group }
      else
        format.html { render :new }
        format.json { render json: @order_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_groups/1
  # PATCH/PUT /order_groups/1.json
  def update
    respond_to do |format|
      if @order_group.update(order_group_params)
        format.html { redirect_to @order_group, notice: 'Order group was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_group }
      else
        format.html { render :edit }
        format.json { render json: @order_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_groups/1
  # DELETE /order_groups/1.json
  def destroy
    @order_group.destroy
    respond_to do |format|
      format.html { redirect_to order_groups_url, notice: 'Order group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_group
      @order_group = OrderGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_group_params
      params.require(:order_group).permit(:order_date, :user_id)
    end
end
