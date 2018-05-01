feature "home page" do
  scenario "expects page to post the names given in the form to the" do
    sign_in_and_play
    expect(page).to have_content('John vs Will')
  end
end
