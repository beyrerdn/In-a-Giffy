require 'test_helper'

class GifUploadTest < ActionDispatch::IntegrationTest
  test "file upload" do
    Capybara.current_driver = :poltergeist
    visit("/")
    original_count = page.all(:css, "#gif_list img").length
    click_link("Sign Up")
    fill_in("Email", :with => "beyrerdn1@inagiffy.com")
    fill_in("Username", :with => "beyrerdn1")
    fill_in("Password", :with => "password")
    fill_in("Password confirmation", :with => "password")
    click_on("Sign up")
    click_link("New Gif")
    attach_file("gif_file", "Users/danielnathanbeyrer/Pictures/giphy.gif")
    click_link("Create Gif")
    asser_equal original_count + 1, page.all(:css, "#gif_list img").length
    click_link("Logout")
  end
end
