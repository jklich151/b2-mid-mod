require 'rails_helper'

RSpec.describe "Studio Index Page" do
  it "can see a list of all the studios and their movies" do
    studio_1 = Studio.create(name: "Warner Brothers")
    studio_2 = Studio.create(name: "Universal")
    studio_3 = Studio.create(name: "Columbia")

    movie_1 = Movie.create(name: "Harry Potter")
    movie_2 = Movie.create(name: "Watchmen")
    movie_3 = Movie.create(name: "Sing")
    movie_4 = Movie.create(name: "SkyFall")

    StudioMovies.create(studio: studio_1, movie: movie_1)
    StudioMovies.create(studio: studio_1, movie: movie_2)
    StudioMovies.create(studio: studio_2, movie: movie_3)
    StudioMovies.create(studio: studio_3, movie: movie_4)

    visit "/studios"

    expect(page).to have_content("Warner Brothers: Harry Potter, Watchmen")
    expect(page).to have_content("Universal: Sing")
    expect(page).to have_content("Columbia: SkyFall")
  end
end
