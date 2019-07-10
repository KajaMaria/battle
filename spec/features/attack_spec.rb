feature 'Attacking' do
  scenario "Attacking player 2 and getting a confirmation" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Kaja attacked James'
  end
  scenario "Player 1 can attack player 2 and take away 10 hp from player 2" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'your hp is 50'
  end
end
