require "rails_helper"

feature "Visited tours" do
  scenario "User visit 5 different tours" do
    tours = FactoryGirl.create_list(:tour, 10)
    tours.each { |tour| visit tour_path(tour.id) }

    visit tour_path(tours[0].id)
    expect(page).to have_text("Last visited")

    # should be
    expect(page).to have_text(tours[9].name)
    expect(page).to have_text(tours[8].name)
    expect(page).to have_text(tours[7].name)

    # not here
    expect(page).to have_no_text(tours[1].name)
    expect(page).to have_no_text(tours[2].name)
    expect(page).to have_no_text(tours[3].name)
  end
end