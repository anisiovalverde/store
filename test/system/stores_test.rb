require "application_system_test_case"

class StoresTest < ApplicationSystemTestCase
  setup do
    @store = stores(:one)
  end

  test "visiting the index" do
    visit stores_url
    assert_selector "h1", text: "Stores"
  end

  test "creating a Store" do
    visit stores_url
    click_on "New Store"

    fill_in "Accounting email", with: @store.accounting_email
    check "Active" if @store.active
    fill_in "Address", with: @store.address
    fill_in "City", with: @store.city
    fill_in "Contact", with: @store.contact
    fill_in "Contact email", with: @store.contact_email
    fill_in "Contact phone", with: @store.contact_phone
    check "Delivery" if @store.delivery
    fill_in "Email", with: @store.email
    check "Free" if @store.free
    fill_in "Name", with: @store.name
    fill_in "Owner email", with: @store.owner_email
    fill_in "Owner name", with: @store.owner_name
    fill_in "Owner phone", with: @store.owner_phone
    fill_in "State", with: @store.state
    fill_in "Telephone", with: @store.telephone
    check "Visible" if @store.visible
    fill_in "Website", with: @store.website
    click_on "Create Store"

    assert_text "Store was successfully created"
    click_on "Back"
  end

  test "updating a Store" do
    visit stores_url
    click_on "Edit", match: :first

    fill_in "Accounting email", with: @store.accounting_email
    check "Active" if @store.active
    fill_in "Address", with: @store.address
    fill_in "City", with: @store.city
    fill_in "Contact", with: @store.contact
    fill_in "Contact email", with: @store.contact_email
    fill_in "Contact phone", with: @store.contact_phone
    check "Delivery" if @store.delivery
    fill_in "Email", with: @store.email
    check "Free" if @store.free
    fill_in "Name", with: @store.name
    fill_in "Owner email", with: @store.owner_email
    fill_in "Owner name", with: @store.owner_name
    fill_in "Owner phone", with: @store.owner_phone
    fill_in "State", with: @store.state
    fill_in "Telephone", with: @store.telephone
    check "Visible" if @store.visible
    fill_in "Website", with: @store.website
    click_on "Update Store"

    assert_text "Store was successfully updated"
    click_on "Back"
  end

  test "destroying a Store" do
    visit stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store was successfully destroyed"
  end
end
