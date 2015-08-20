require 'test_helper'

class UserAccountsTest < ActionDispatch::IntegrationTest

  test "signing up" do
    Capybara.current_driver = :poltergeist
    Capybara.reset_sessions!
    visit("/")
    click_link('Sign Up')
    fill_in("Email", :with => "beyrerdn@inagiffy.com")
    fill_in("Username", :with => "beyrerdn")
    fill_in("Password", :with => "password")
    fill_in("Password confirmation", :with => "password")
    click_on("Sign up")
    assert page.has_content?('Logout')
  end

  test "signing in" do
    Capybara.current_driver = :poltergeist
    Capybara.reset_sessions!
    visit("/")
    click_link('Sign Up')
    fill_in("Email", :with => "beyrerdn1@inagiffy.com")
    fill_in("Username", :with => "beyrerdn1")
    fill_in("Password", :with => "password")
    fill_in("Password confirmation", :with => "password")
    click_on("Sign up")
    click_on('Logout')
    click_link('Login')
    fill_in("Email", :with => "beyrerdn1@inagiffy.com")
    fill_in("Password", :with => "password")
    click_on("Log in")
    assert page.has_content?('Logout')
  end

  test "logging out" do
    Capybara.current_driver = :poltergeist
    Capybara.reset_sessions!
    visit("/")
    click_link('Sign Up')
    fill_in("Email", :with => "beyrerdn2@inagiffy.com")
    fill_in("Username", :with => "beyrerdn2")
    fill_in("Password", :with => "password")
    fill_in("Password confirmation", :with => "password")
    click_on("Sign up")
    click_on("Logout")
    assert page.has_content?('Login')
  end

end
