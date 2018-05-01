feature "home page" do
  before do
    visit('/')
  end
  scenario " outputs 'Testing infrastructure working!'" do
    expect(page).to have_content('Testing infrastructure working!')

  end
end
