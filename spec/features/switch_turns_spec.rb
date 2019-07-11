feature "switching turns" do
  scenario "allows players to switch turns " do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_text "James it's your turn"
  end
end
