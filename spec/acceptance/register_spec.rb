require_relative '../acceptance_helper'

describe "registration form" do
  it "can successfully register user" do
    visit '/'
    within("#register") do
      fill_in 'Email', :with => 'user@example.com'
      fill_in 'Password', :with => 'password'
    end
    click_on 'Register'
    expect(page).to have_content 'successfully'
  end
end