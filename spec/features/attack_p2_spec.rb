
feature 'Attack Player' do
  # scenario 'attack player 2' do
  #   sign_in_and_play
  #   click_button "Attack!"
  #   expect(page).to have_content 'Mittens has been attacked by Dave!!'
  # end

  scenario 'reduce player 2 HP by 10 points' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
    expect(page).to have_content 'Mittens has been attacked by Dave!!'
  end

  scenario 'reduce player 1 HP by 10 points' do
    sign_in_and_play
    click_button "Attack!"
    click_button "OK"
    click_button "Attack!"
    expect(page).not_to have_content 'Dave: 60HP'
    expect(page).to have_content 'Dave: 50HP'
    expect(page).to have_content 'Dave has been attacked by Mittens!!'
  end
end
