
require 'test_helper'

class GifUploadTest < ActionDispatch::IntegrationTest
  test "file upload" do
    Capybara.current_driver = :poltergeist
    Capybara.reset_sessions!
    visit("/")
    original_count = page.all(:css, "#gifs-list .gif").length
    click_link("Sign Up")
    fill_in("Email", :with => "beyrerdn3@inagiffy.com")
    fill_in("Username", :with => "beyrerdn3")
    fill_in("Password", :with => "password")
    fill_in("Password confirmation", :with => "password")
    click_on("Sign up")
    click_on("Logout")
    click_link('Login')
    fill_in("Email", :with => "beyrerdn3@inagiffy.com")
    fill_in("Password", :with => "password")
    click_on("Log in")
    click_link("New Gif")
    attach_file("gif_file", "/Users/danielnathanbeyrer/Pictures/giphy.gif")
    fill_in("All tags", :with => "#test, #yes")
    click_on("Create Gif")
    assert_equal original_count + 1, page.all(:css, "#gifs-list .gif").length
    click_on("Logout")
  end
end
