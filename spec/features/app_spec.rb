require 'capybara/rspec'

describe Battle do
  describe 'Homepage', :type => :feature do
    it 'should say "Hello players!!"' do
      visit '/'
      expect(page).to have_content 'Hello players!!'
    end
    it 'should display names of the players' do
      sign_in_and_play
      expect(page).to have_content 'JJ'
      expect(page).to have_content 'Marie'
    end
  end

  describe '/play', :type => :feature do
    it 'should display Player 2 points' do
      sign_in_and_play
      expect(page).to have_content 'Player 2: Marie 60 HP'
    end
    it 'should display 50 points after the attack' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content 'Player 2: Marie 50 HP'
    end
    it 'should display 50 points after the attack' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'Attack'
      expect(page).to have_content 'Player 1: JJ 50 HP'
    end
  end
end
