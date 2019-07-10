feature 'features tests' do
  scenario 'Can enter and see name 1' do
    sign_in_and_play
    expect(page).to have_text 'Kaja'
  end
  scenario 'Can enter and see name 2' do
    sign_in_and_play
    expect(page).to have_content 'James'
  end
  scenario "Player 1 can see player two's hit points" do
    sign_in_and_play
    expect(page).to have_content 'James :60hp'
  end

end
