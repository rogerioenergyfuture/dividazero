require "application_system_test_case"

class HoldsTest < ApplicationSystemTestCase
  setup do
    @hold = holds(:one)
  end

  test "visiting the index" do
    visit holds_url
    assert_selector "h1", text: "Holds"
  end

  test "creating a Hold" do
    visit holds_url
    click_on "New Hold"

    fill_in "Code", with: @hold.code
    fill_in "Company", with: @hold.company_id
    fill_in "Dateparcel", with: @hold.dateparcel
    fill_in "Email", with: @hold.email
    fill_in "Mobile", with: @hold.mobile
    fill_in "Name", with: @hold.name
    fill_in "Predefaulting", with: @hold.predefaulting
    fill_in "Quantparcel", with: @hold.quantparcel
    fill_in "Status", with: @hold.status
    click_on "Create Hold"

    assert_text "Hold was successfully created"
    click_on "Back"
  end

  test "updating a Hold" do
    visit holds_url
    click_on "Edit", match: :first

    fill_in "Code", with: @hold.code
    fill_in "Company", with: @hold.company_id
    fill_in "Dateparcel", with: @hold.dateparcel
    fill_in "Email", with: @hold.email
    fill_in "Mobile", with: @hold.mobile
    fill_in "Name", with: @hold.name
    fill_in "Predefaulting", with: @hold.predefaulting
    fill_in "Quantparcel", with: @hold.quantparcel
    fill_in "Status", with: @hold.status
    click_on "Update Hold"

    assert_text "Hold was successfully updated"
    click_on "Back"
  end

  test "destroying a Hold" do
    visit holds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hold was successfully destroyed"
  end
end
