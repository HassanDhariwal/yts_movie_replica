class MoviesController < ApplicationController
  def index
    @movies = YAML.load_file(Rails.root.join('config', 'movie.yml'))
  end
end
