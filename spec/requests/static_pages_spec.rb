require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    #it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    #  get static_pages_index_path
    #  response.status.should be(200)
    #end
    
    # Test for Home Page Content
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Build One IDeas')
    end
  end
end
