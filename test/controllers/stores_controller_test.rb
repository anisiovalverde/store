require 'test_helper'

class StoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store = stores(:one)
  end

  test "should get index" do
    get stores_url
    assert_response :success
  end

  test "should get new" do
    get new_store_url
    assert_response :success
  end

  test "should create store" do
    assert_difference('Store.count') do
      post stores_url, params: { store: { accounting_email: @store.accounting_email, active: @store.active, address: @store.address, city: @store.city, contact: @store.contact, contact_email: @store.contact_email, contact_phone: @store.contact_phone, delivery: @store.delivery, email: @store.email, free: @store.free, name: @store.name, owner_email: @store.owner_email, owner_name: @store.owner_name, owner_phone: @store.owner_phone, state: @store.state, telephone: @store.telephone, visible: @store.visible, website: @store.website } }
    end

    assert_redirected_to store_url(Store.last)
  end

  test "should show store" do
    get store_url(@store)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_url(@store)
    assert_response :success
  end

  test "should update store" do
    patch store_url(@store), params: { store: { accounting_email: @store.accounting_email, active: @store.active, address: @store.address, city: @store.city, contact: @store.contact, contact_email: @store.contact_email, contact_phone: @store.contact_phone, delivery: @store.delivery, email: @store.email, free: @store.free, name: @store.name, owner_email: @store.owner_email, owner_name: @store.owner_name, owner_phone: @store.owner_phone, state: @store.state, telephone: @store.telephone, visible: @store.visible, website: @store.website } }
    assert_redirected_to store_url(@store)
  end

  test "should destroy store" do
    assert_difference('Store.count', -1) do
      delete store_url(@store)
    end

    assert_redirected_to stores_url
  end
end
