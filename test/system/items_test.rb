require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "should create item" do
    visit items_url
    click_on "New item"

    fill_in "Channel", with: @item.channel_id
    fill_in "Content", with: @item.content
    fill_in "Description", with: @item.description
    fill_in "Link", with: @item.link
    fill_in "Published at", with: @item.published_at
    fill_in "Read at", with: @item.read_at
    fill_in "Title", with: @item.title
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "should update Item" do
    visit item_url(@item)
    click_on "Edit this item", match: :first

    fill_in "Channel", with: @item.channel_id
    fill_in "Content", with: @item.content
    fill_in "Description", with: @item.description
    fill_in "Link", with: @item.link
    fill_in "Published at", with: @item.published_at
    fill_in "Read at", with: @item.read_at
    fill_in "Title", with: @item.title
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "should destroy Item" do
    visit item_url(@item)
    click_on "Destroy this item", match: :first

    assert_text "Item was successfully destroyed"
  end
end
