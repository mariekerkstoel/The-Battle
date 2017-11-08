require 'capybara/rspec'

describe Battle do

  describe "Homepage", :type => :feature do
    it 'should say "Testing infrastructure working!"' do
      visit '/'
      expect(page).to have_content "Testing infrastructure working!"
    end
    xit 'should display names of the players' do
      visit '/'
      fill_in 'player1', with: "JJ"
      fill_in 'player2', with: "Marie"
      click_button 'Submit'
      expect(page).to have_content "JJ"
    end
  end
end
