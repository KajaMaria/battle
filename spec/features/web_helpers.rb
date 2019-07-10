def sign_in_and_play
  visit('/')
  fill_in 'name1', with: 'Kaja'
  fill_in 'name2', with: 'James'
  click_button 'Submit'
end
