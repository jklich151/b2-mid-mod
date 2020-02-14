require 'rails_helper'

RSpec.describe "Actors Show Page" do
  it "can see actor info and the movies they are in" do
    movie_1 = Movie.create(name: "Harry Potter")
    actor_1 = Actor.create!(name: "Daniel Radcliffe",
                          age: "16",
                          movies: movie_1)

    visit "/actors/#{actor_1.id}"

    expect(page).to have_content("Name: Daniel Radcliffe")
    expect(page).to have_content("Age: 16")
    expect(page).to have_content("Movies: Harry Potter")
  end
end
