require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The triangles path', {:type => :feature}) do
  it ("takes inputs for three sides to determine type of triangle") do
    visit('/')
    fill_in('side1', :with => '5')
    fill_in('side2', :with => '6')
    fill_in('side3', :with => '7')
    click_button('Trianglize')
    expect(page).to have_content("scalene")
  end
  it ("takes inputs for three sides to determine type of triangle") do
    visit('/')
    fill_in('side1', :with => '3')
    fill_in('side2', :with => '3')
    fill_in('side3', :with => '33')
    click_button('Trianglize')
    expect(page).to have_content("Those side lengths don't make a triangle")
  end
end
