require 'spec_helper'

describe "Static pages" do

  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit '/static_page/home'
      expect(page).to have_content('Sample App')
    end
  end

  describe "Help Page" do
    it "should have the content 'Sample App'" do
      visit '/static_page/help'
      expect(page).to have_content('Help')
    end
  end

end
