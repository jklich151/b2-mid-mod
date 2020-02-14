require 'rails_helper'

RSpec.describe "Studio Index Page" do
  it "can see a list of all the studios and their movies" do
    studio_1 = Studio.create(name: "Warner Brothers")
    movie_1 = Movie.create(name: "Harry Potter",
                          studio: studio_1)
    movie_2 = Movie.create(name: "Watchmen",
                          studio: studio_1)
    studio_2 = Studio.create(name: "Universal")
    movie_3 = Movie.create(name: "Sing",
                          studio: studio_2)
    studio_3 = Studio.create(name: "Columbia")
    movie_4 = Movie.create(name: "SkyFall",
                          studio: studio_1)

    visit "/studios"

    expect(page).to have_content("Warner Brothers")
    expect(page).to have_content("Universal")
    expect(page).to have_content("Columbia")
    expect(page).to have_content("Harry Potter")
    expect(page).to have_content("Watchmen")
    expect(page).to have_content("Sing")
    expect(page).to have_content("SkyFall")
  end
end
