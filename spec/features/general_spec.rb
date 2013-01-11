require 'spec_helper'

describe "general functionality" do
  it "should not display the banner when description is empty" do
    Spree::NotificationBanner::Config[:description] = nil

    visit spree.root_path
    page.should_not have_content("Banner Hello World")
    page.should_not have_css('#notification-banner')
  end

  it "should display the banner when description exists" do
    Spree::NotificationBanner::Config[:description] = "Banner Hello World"

    visit spree.root_path
    page.should have_content("Banner Hello World")
  end
end