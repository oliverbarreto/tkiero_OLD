require 'spec_helper'

describe "StaticPages" do
    #it "works! (now write some real specs)" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    #  get static_pages_index_path
    #  response.status.should be(200)
    #end

  let(:base_title) { "tKiero Demo App" }
  subject { page }
    
  describe "Home page" do
    # With Prettier tests for the static pages. 
    # spec/requests/static_pages_spec.rb

    # Files in the spec/support directory are automatically included by RSpec, 
    # which means that we can write the Home tests as follows:

    before { visit root_path }

    it { should have_content('Build One IDeas') }
    it { should have_selector('h1',    text: "#{base_title}") }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Home page 2" do
    # Without Prettier tests for the static pages. 
    
    before { visit root_path } 

    it { should have_content('Build One IDeas') }
    it { should have_selector('h1', text: "#{base_title}") }
    #it { should have_selector('title', text: "#{base_title}") }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| Home') }
  end
  
  describe "Help page" do
    # Test for Help Page Tittle Content
    before { visit help_path } 

    it { should have_selector('h1', text: "#{base_title}") }
    #it { should have_selector('title', text: "#{base_title}") }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| Help') }
  end  
   
  describe "About page" do
    # Test for About Page Content
    before { visit about_path } 

    it { should have_selector('h1', text: "#{base_title}") }
    #it { should have_selector('title', text: "#{base_title}") }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| About') }
  end  

  describe "Contact page" do
    # Test for Contact Page Content
    before { visit contact_path } 

    it { should have_selector('h1', text: "#{base_title}") }
    #it { should have_selector('title', text: "#{base_title}") }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| Contact') }
  end
end
