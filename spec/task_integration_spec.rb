require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('task description path', {:type => :feature}) do
  it('accept user input that creates a task description and save in an array') do
    visit('/')
    fill_in("description", :with => 'buy her purse')
    click_button("Enter today's task!")
    expect(page).to have_content('successfully submitted!')
  end
end
