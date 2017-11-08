require 'capybara/rspec'

describe Battle do

  describe "Homepage", :type => :feature do
    it 'should say "Testing infrastructure working!"' do
      visit '/'
      expect(page).to have_content "Testing infrastructure working!"
    end
  end

end
