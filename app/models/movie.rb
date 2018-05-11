class Movie

  def self.call_movie_api(decade)
    api_data[decade].first
  end

  def self.api_data
    {
      1950 => ["Maltese Falcon"],
      1960 => ["The Apartment"],
      1970 => ["Saturday Night Live"],
      1980 => ["Ferris Bueller"],
      1990 => ["Pulp Fiction"],
      2000 => ["Avengers"],
      2010 => ["Zoolander"]
    }
  end
end
