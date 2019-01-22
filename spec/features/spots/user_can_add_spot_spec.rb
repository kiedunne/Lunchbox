require 'rails_helper'
require_relative '../sessions_helpers.rb'

RSpec.feature 'Add spots', type: :feature do
  scenario 'Shows add spots' do
    sign_up
    visit '/spots/new'
    expect(page).to have_content('Add Spots!')
  end
end
