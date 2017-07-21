feature 'game-over!' do

  scenario 'display the player who has lost' do
    sign_in_and_play
    click_button "Attack!"
    while Game.instance.player_2.hit_points > 0
      click_button "OK"
      click_button "Attack!"
    end
    expect(page).to have_content 'GAME OVER! Mittens has lost'
  end

end
