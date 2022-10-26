require "application_system_test_case"

class ChannelsTest < ApplicationSystemTestCase
  setup do
    @channel = channels(:one)
  end

  test "visiting the index" do
    visit channels_url
    assert_selector "h1", text: "Channels"
  end

  test "should create channel" do
    visit channels_url
    click_on "New channel"

    fill_in "Category", with: @channel.category_id
    fill_in "Description", with: @channel.description
    fill_in "Fetched at", with: @channel.fetched_at
    fill_in "Link", with: @channel.link
    fill_in "Title", with: @channel.title
    fill_in "Xml link", with: @channel.xml_link
    click_on "Create Channel"

    assert_text "Channel was successfully created"
    click_on "Back"
  end

  test "should update Channel" do
    visit channel_url(@channel)
    click_on "Edit this channel", match: :first

    fill_in "Category", with: @channel.category_id
    fill_in "Description", with: @channel.description
    fill_in "Fetched at", with: @channel.fetched_at
    fill_in "Link", with: @channel.link
    fill_in "Title", with: @channel.title
    fill_in "Xml link", with: @channel.xml_link
    click_on "Update Channel"

    assert_text "Channel was successfully updated"
    click_on "Back"
  end

  test "should destroy Channel" do
    visit channel_url(@channel)
    click_on "Destroy this channel", match: :first

    assert_text "Channel was successfully destroyed"
  end
end
