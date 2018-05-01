feature 'play page' do
  before do
    visit('/')
    fill_in('name1', with: 'John')
    fill_in('name2', with: 'Will')
    click_button('Sumbit Players')
  end

  scenario 'shows player hit points' do
    expect(page).to have_content('Will: 50/50 HP')
  end

  scenario 'Player 2 is attacked' do
    click_link('Attack Will')
    expect(page).to have_content('Will has been zapped')
  end
end
