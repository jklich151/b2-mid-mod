require 'rails_helper'

RSpec.describe "Movies Show Page" do
  it "can see movie info and all actors from youngest to oldest" do
    studio_1 = Studio.create(name: "Warner Brothers")
    movie_1 = Movie.create(name: "Harry Potter",
                            creation_year: "2006",
                            genre: "Awesome",
                            studio: studio_1)

  end
end
