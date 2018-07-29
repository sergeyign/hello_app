require 'test_helper'

class ShoplistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shoplist = shoplists(:one)
  end

  test "should get index" do
    get shoplists_url
    assert_response :success
  end

  test "should get new" do
    get new_shoplist_url
    assert_response :success
  end

  test "should create shoplist" do
    assert_difference('Shoplist.count') do
      post shoplists_url, params: { shoplist: { content: @shoplist.content, price: @shoplist.price } }
    end

    assert_redirected_to shoplist_url(Shoplist.last)
  end

  test "should show shoplist" do
    get shoplist_url(@shoplist)
    assert_response :success
  end

  test "should get edit" do
    get edit_shoplist_url(@shoplist)
    assert_response :success
  end

  test "should update shoplist" do
    patch shoplist_url(@shoplist), params: { shoplist: { content: @shoplist.content, price: @shoplist.price } }
    assert_redirected_to shoplist_url(@shoplist)
  end

  test "should destroy shoplist" do
    assert_difference('Shoplist.count', -1) do
      delete shoplist_url(@shoplist)
    end

    assert_redirected_to shoplists_url
  end
end
