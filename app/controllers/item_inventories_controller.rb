class ItemInventoriesController < ApplicationController
  before_action :set_item_inventory, only: [:show, :edit, :update, :destroy]

  # GET /item_inventories
  # GET /item_inventories.json
  def index
    @item_inventories = ItemInventory.all
  end

  # GET /item_inventories/1
  # GET /item_inventories/1.json
  def show
  end

  # GET /item_inventories/new
  def new
    @item_inventory = ItemInventory.new
  end

  # GET /item_inventories/1/edit
  def edit
  end

  # POST /item_inventories
  # POST /item_inventories.json
  def create
    @item_inventory = ItemInventory.new(item_inventory_params)

    respond_to do |format|
      if @item_inventory.save
        format.html { redirect_to @item_inventory, notice: 'Item inventory was successfully created.' }
        format.json { render :show, status: :created, location: @item_inventory }
      else
        format.html { render :new }
        format.json { render json: @item_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_inventories/1
  # PATCH/PUT /item_inventories/1.json
  def update
    respond_to do |format|
      if @item_inventory.update(item_inventory_params)
        format.html { redirect_to @item_inventory, notice: 'Item inventory was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_inventory }
      else
        format.html { render :edit }
        format.json { render json: @item_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_inventories/1
  # DELETE /item_inventories/1.json
  def destroy
    @item_inventory.destroy
    respond_to do |format|
      format.html { redirect_to item_inventories_url, notice: 'Item inventory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_inventory
      @item_inventory = ItemInventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_inventory_params
      params.require(:item_inventory).permit(:item_id, :purchased_at, :notes)
    end
end
