feature "loser" do
  scenario "makes player 2 the loser " do
    sign_in_and_play
    11.times {
      click_button 'Attack'
      click_button 'OK'
    }
    expect(page).to have_text "James you have lost"
  end
end
