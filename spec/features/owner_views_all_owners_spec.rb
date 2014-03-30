require 'spec_helper'

feature "User submits a dog", %q{
  As a dog owner
  I want to register my dog
  So that I can connect with other dog lovers
} do

#Acceptance Criteria:
# * An owner must specify their first name, last name, email address, and dog's name.
# * Upon adding my entry, I can see a list of other registered dog owners.
# * An owner's full_name can be requested.

  context 'viewing other users' do
    it 'provides a view for seeing all dog lovers' do
      visit 'owners/show' do
        expect(page).to have_link('Find Other Dog Lovers', :href=>"/owners/index")
      end
    end
  end
end
