require 'rails_helper'

RSpec.feature 'Add spots', type: :feature do
  scenario 'Shows add spots' do
    visit '/spots/new'
    expect(page).to have_content('Add Spots!')
  end
end
