feature 'Attacking' do
  scenario "Attacking player 2 and getting a confirmation" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Kaja attacked James'
  end
end
