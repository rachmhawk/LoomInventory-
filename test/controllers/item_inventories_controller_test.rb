require 'test_helper'

class ItemInventoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_inventory = item_inventories(:one)
  end

  test "should get index" do
    get item_inventories_url
    assert_response :success
  end

  test "should get new" do
    get new_item_inventory_url
    assert_response :success
  end

  test "should create item_inventory" do
    assert_difference('ItemInventory.count') do
      post item_inventories_url, params: { item_inventory: { item_id: @item_inventory.item_id, purchased_at: @item_inventory.purchased_at } }
    end

    assert_redirected_to item_inventory_url(ItemInventory.last)
  end

  test "should show item_inventory" do
    get item_inventory_url(@item_inventory)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_inventory_url(@item_inventory)
    assert_response :success
  end

  test "should update item_inventory" do
    patch item_inventory_url(@item_inventory), params: { item_inventory: { item_id: @item_inventory.item_id, purchased_at: @item_inventory.purchased_at } }
    assert_redirected_to item_inventory_url(@item_inventory)
  end

  test "should destroy item_inventory" do
    assert_difference('ItemInventory.count', -1) do
      delete item_inventory_url(@item_inventory)
    end

    assert_redirected_to item_inventories_url
  end
end
