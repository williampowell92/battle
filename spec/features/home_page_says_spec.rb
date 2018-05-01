feature "home page" do
  before do
    visit('/names')
  end
  scenario "expects page to post the names given in the form to the" do
    fill_in('name1', with: 'John')
    fill_in('name2', with: 'Will')
    click_button('Sumbit Players')
    expect(page).to have_content('John vs Will')
  end
end
