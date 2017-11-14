require 'rails_helper'

RSpec.feature "RegisterUser", type: :feature do
    context "Landing page" do
        Steps "Going to Landing page" do
            Given "I visit localhost:3000" do
                visit "/"
            end
            Then "I see Register here!" do
                expect(page).to have_content("Register here!")
            end
        end
    end
end
