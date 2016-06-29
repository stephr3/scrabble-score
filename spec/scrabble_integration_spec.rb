require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry and returns the appropriate scrabble score') do
    visit('/')
    fill_in('word', :with => 'cat')
    click_button('Calculate')
    expect(page).to have_content('5')
  end
end
