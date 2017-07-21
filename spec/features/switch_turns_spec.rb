feature 'switch_turns' do

  context 'seeing the current turn' do
    scenario 'page should show whose turn it is to play' do
      sign_in_and_play
      expect(page).to have_content "It is Dave's turn to play!"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_button 'Attack!'
      click_link 'OK'
      expect(page).not_to have_content "It is Dave's turn to play!"
      expect(page).to have_content "It is Mittens's turn to play!"
    end
  end
end
