class MovieController < ApplicationController
  def index
    return render unless params[:y]
    movie = JSON.parse(Curl.get("http://www.omdbapi.com/?y=#{params[:y]}&t=a&apikey=37bece07").body_str)
    @password = movie.slice("Title", "Genre", "Actors").values.flatten.shuffle(random: Random.new(params[:y].to_i)).join(" ").split(" ").take(5).join(" ").parameterize
  end
end
