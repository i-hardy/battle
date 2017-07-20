feature 'Enter names' do
  scenario 'submitting names' do
    # commented out code extratced to web_helpers file
    # visit('/')
    # fill_in :player_1_name, with: 'Dave'
    # fill_in :player_2_name, with: 'Mittens'
    # click_button 'Submit'
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end

# Note that we are using Capybara's feature and scenario syntax. These work just
# like describe and it, and we can use them interchangeably. This is because
# Capybara-RSpec is simply a bunch of helpful methods on top of RSpec. Capybara
# itself is simply a way of driving devices, like browsers, in a programmatic way.
