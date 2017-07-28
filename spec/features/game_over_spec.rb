feature 'game-over!' do

  scenario 'display the player who has lost' do
    allow_any_instance_of(Kernel).to receive(:rand).and_return(60)
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content 'GAME OVER! Mittens has lost'
  end
end
