require 'spec_helper'

describe "User pages" do

  let(:base_title) { "tKiero App" }
  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Build One IDeas') }
    it { should have_selector('h1',    text: "#{base_title}") }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Sign Up' }
  end
end


