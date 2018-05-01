feature 'play page' do
  scenario 'shows player hit points' do
    sign_in_and_play
    expect(page).to have_content('Will: 50/50 HP')
  end

  scenario 'Player 2 is attacked' do
    sign_in_and_play
    click_link('Attack Will')
    expect(page).to have_content('Will has been zapped')
  end
end
