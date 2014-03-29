require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit '/static_page/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_page/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_page/home'
      expect(page).not_to have_title('| Home')
    end

  end

  describe "Help Page" do
    it "should have the content 'Sample App'" do
      visit '/static_page/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/static_page/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About Page" do
    it "should have the content 'About Us'" do
      visit '/static_page/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit '/static_page/about'
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Contact Page" do
    it "should have the content 'Contact'" do
      visit '/static_page/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the right title" do
      visit '/static_page/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
