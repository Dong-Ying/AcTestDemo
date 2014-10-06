require 'acceptance_helper'

feature "Signing in" do
  scenario "Signing in with correct credentials" do
    visit '/'

    within "#loginform" do
      fill_in "user", with: "*****"
      find('#pswd1').click
      fill_in 'pswd2', with: "*****"
      click_button 'Login'
    end

    expect(page).to have_content 'Welcome, *******'

    click_link 'topLevelNavDocumentsButton'
    expect(page).to have_content 'Documents'
    expect(page).to have_link 'New'
  end

  scenario "Signing in wrong credentials" do
    visit '/'
    within "#loginform" do
      fill_in "user", with: "username"
      find('#pswd1').click
      fill_in 'pswd2', with: "wrong_pass"
      click_button 'Login'
    end
    expect(page).to have_content 'Invalid Login'
  end
end