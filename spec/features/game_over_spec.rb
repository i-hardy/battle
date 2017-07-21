feature 'game-over!' do

  scenario 'display the player who has lost' do
    sign_in_and_play
    10.times { attack_and_ok }
    click_button "Attack!"
    expect(page).to have_content 'GAME OVER! Mittens has lost'
  end

end
