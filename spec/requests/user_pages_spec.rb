#User Pages = Handles Sign Up Form
require 'spec_helper'

describe "User pages" do
  let(:base_title) { "tKiero App" }
  subject { page }

  describe "Signup page" do

    before { visit signup_path }

    it { should have_content('Build One IDeas') }
    it { should have_selector('h2',    text: "#{base_title}") }
    it { should have_selector('title', text: full_title('')) }
    it { should have_selector 'title', text: '| Sign Up' }
  end
end
