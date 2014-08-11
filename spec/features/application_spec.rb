require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"
  end

  scenario "Anonymous User can click on About" do
    visit "/"
    click_link "About"
    expect(page).to have_content "About"
    expect(page).to have_content "Nothing to see here"
  end

  scenario "Anonmyous User can add a gif" do
    visit "/"
    click_link "New gif"
    fill_in "url", with: "www.kittenbutt.jpg"
    fill_in "title", with: "Laser Cat"
    expect(page).to have_content("gif created successfully")
    expect(page).to have_content("www.kittenbutt.jpg")
    expect(page).to have_content("Laser Cat")
  end
end
