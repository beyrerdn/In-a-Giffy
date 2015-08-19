require 'test_helper'

class UserAccountsTest < ActionDispatch::IntegrationTest

  test "signing up" do
    Capybara.current_driver = :poltergeist
    visit("/")
    click_link("Sign Up")
    fill_in("Email", :with => "beyrerdn@inagiffy.com")
    fill_in("Username", :with => "beyrerdn")
    fill_in("Password", :with => "password")
    fill_in("Password confirmation", :with => "password")
    click_on("Sign up")
    assert pag.has_content?('Logout')
  end

  test "signing in" do
    Capybara.current_driver = :poltergeist
    visit("/")
    click_link("Login")
    fill_in("Email", :with => "beyrerdn@inagiffy.com")
    fill_in("Password", :with => "password")
    fill_in("Password confirmation", :with => "password")
    click_on("Log in")
    assert pag.has_content?('Logout')
  end

  test "logging out" do
    Capybara.current_driver = :poltergeist
    visit("/")
    click_link("Login")
    fill_in("Email", :with => "beyrerdn@inagiffy.com")
    fill_in("Password", :with => "password")
    fill_in("Password confirmation", :with => "password")
    click_on("Log in")
    click_on("Logout")
    assert pag.has_content?('Login')
  end

end