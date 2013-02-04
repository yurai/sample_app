require 'spec_helper'

describe "Static pages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: "#{base_title} | About Us"
    click_link "Help"
    page.should have_selector 'title', text: "#{base_title} | Help"
    click_link "Contact"
    page.should have_selector 'title', text: "#{base_title} | Contact"
    click_link "Home"
    click_link "Sign up now!"
    page.should have_selector 'title', text: "#{base_title} | Sign up"
    click_link "sample app"
    page.should have_selector 'title', text: "#{base_title}"
  end
end

