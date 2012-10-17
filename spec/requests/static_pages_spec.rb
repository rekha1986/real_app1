require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the h1 'Real App1'"  do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Real App1')

    end

it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "My Real App1 | Home")
    end
end

describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
end

it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "My Real App1 | Help")
    end
end

describe "About page" do

it "should have the h1 'About Us'" do
visit '/static_pages/about'
page.should have_selector('h1', :text => 'About Us')
end

it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "My Real App1 | About Us")
    end
end
end
