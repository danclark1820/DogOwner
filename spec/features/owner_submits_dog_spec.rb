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

  context "with valid attributes" do
    it "submits a owner with valid attributes" do
      visit '/owners/new'
      fill_in "First Name", with: "Mike"
      fill_in "Last Name", with: "Boerger"
      fill_in "Email", with: "mike@boerger.com"
      fill_in "Dog Name", with: "Borgy"

      click_on "Become a Registered Dog Owner"

      expect(page).to have_content "Succesfully Registered"
      expect(page).to have_content "Index of Dog Lovers"
    end

    it "does not submit owner with invalid attributes" do
      visit 'owners/new'

      click_on "Become a Registered Dog Owner"

      expect(page).to have_content "Please fill out required fields."
    end
  end
end
