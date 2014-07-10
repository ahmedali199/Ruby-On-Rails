require 'rails_helper'

describe "Static Pages" do
  
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end
  
  describe "contactUs page" do
    it "should have the content 'contactUs'" do
      visit '/static_pages/home'
      page.should have_content('contact Us')
    end
  end
  
  describe "About page" do
    it "should have the content 'About'" do
      visit '/static_pages/home'
      page.should have_content('About Us')
    end
  end
  
  describe "Location Page" do
    it "should have the content 'Location'" do
      visit '/static_pages/home'
      page.should have_content('Location')
    end
  end

end
