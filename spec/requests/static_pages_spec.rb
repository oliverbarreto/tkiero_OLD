require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) { "tKiero Demo App" }

  
  describe "Home page" do
    #it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    #  get static_pages_index_path
    #  response.status.should be(200)
    #end
        
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', 
                    :text => "#{base_title}")

#      page.should have_selector('title',
#                    :text => "tKiero Demo App")
    end
 
 
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', 
                    :text => 'tKiero Demo App')
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', 
                    :text => '| Home')
    end
    
  end
  
  describe "Help page" do

    # Test for Help Page Content
#    it "should have the content 'Build One IDeas'" do
#      visit '/static_pages/help'
#      page.should have_content('Build One IDeas')
#    end

    # Test for Help Page Tittle Content
    it "should have the base title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                    :text => "tKiero Demo App")
    end

    it "should have the h1 'Sample App'" do
      visit '/static_pages/help'
      page.should have_selector('h1', 
                    :text => 'tKiero Demo App')
    end

    it "should not have a custom page title" do
      visit '/static_pages/help'
      page.should_not have_selector('title', 
                    :text => '| Help')
    end
  end  
   
  describe "About page" do

    # Test for About Page Content
#    it "should have the content 'Build One IDeas'" do
#      visit '/static_pages/about'
#      page.should have_content('Build One IDeas')
#    end
    
    # Test for About Page Tittle Content
    it "should have the base title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "tKiero Demo App")
    end
 
    it "should have the h1 'Sample App'" do
      visit '/static_pages/about'
      page.should have_selector('h1', 
                    :text => 'tKiero Demo App')
    end
  end  

    it "should not have a custom page title" do
      visit '/static_pages/about'
      page.should_not have_selector('title', 
                    :text => '| About')
    end

  describe "Contact page" do
    it "should exist and have a basic content 'Build One IDeas'" do
      visit '/static_pages/contact'
      page.should have_content('tKiero Demo App')
    end

    it "should have the right base title" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "tKiero Demo App")
    end
  end
end
