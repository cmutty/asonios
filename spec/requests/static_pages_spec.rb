require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'asonios'" do
      visit root_path
      page.should have_selector('h1', :text => 'asonios')
    end

    it "should have the title 'Home'" do
      visit root_path
      page.should have_selector('title',
                        :text => "asonios Demo App | Home")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                        :text => "asonios Demo App | Contact")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector('title',
                    :text => "asonios Demo App | About Us")
    end
  end
end