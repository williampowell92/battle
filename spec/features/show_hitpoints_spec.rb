feature 'play page' do
  scenario 'shows player hit points' do
    sign_in_and_play
    expect(page).to have_content('Will: 50/50 HP')
  end
end
