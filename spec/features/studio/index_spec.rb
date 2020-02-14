require 'rails_helper'

RSpec.describe "Studio Index Page" do
  it "can see a list of all the studios and their movies" do
    studio_1 = Studio.create(name: "Warner Brothers")
    studio_2 = Studio.create(name: "Universal")
    studio_3 = Studio.create(name: "Columbia")

    movie_1 = studio_1.movie.create(name: "Harry Potter")
    movie_2 = studio_1.movie.create(name: "Watchmen")
    movie_3 = studio_2.movie.create(name: "Sing")
    movie_4 = studio_3.movie.create(name: "SkyFall")

    visit "/studios"

    expect(page).to have_content("Warner Brothers: Harry Potter, Watchmen")
    expect(page).to have_content("Universal: Sing")
    expect(page).to have_content("Columbia: SkyFall")
  end
end
