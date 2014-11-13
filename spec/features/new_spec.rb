require 'rails_helper'

  feature "can you create a thang" do


    scenario "u gunna create a thang" do
      visit new_update_path
      fill_in "Status", with: "wearin' shoes!!"
      fill_in "User", with: "Jerry"
      fill_in "Likes", with: "1"
      click_on "Create Update"
      expect(page).to have_content("show")
    end

    scenario "u gunna forget a thang" do
      visit new_update_path
      fill_in "Status", with: ""
      fill_in "User", with: "Jerry"
      fill_in "Likes", with: "1"
      click_on "Create Update"
      expect(page).to have_content("can't be blank")
    end




  end
