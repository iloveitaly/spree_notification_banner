require 'spec_helper'

describe Spree::Admin::NotificationBannerSettingsController do
	stub_authorization!

  render_views

  it "should display the configuration page correctly" do
    spree_get :show

    response.code.should == "200"
    response.body.should include("Notification Banner Settings")
  end

  it "should display the configuration page correctly" do
    spree_get :edit

    response.code.should == "200"
    response.body.should include("Notification Banner Settings")
  end

  it "should display the configuration page correctly" do
    spree_post :show, description: "Hey oh", link: "/products"

    response.code.should == "200"
    response.body.should include("Notification Banner Settings")
  end
end