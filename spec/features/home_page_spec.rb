require "rails_helper"

RSpec.feature "Home page", :type => :feature do
  scenario "User creates a new widget", js: true do
    visit "/home"
    expect(page).to have_selector(".editor-toolbar")
    expect(page.body).to match('easymde.*.js')
    expect(page.body).to match('easymde.*.css')
  end
end
