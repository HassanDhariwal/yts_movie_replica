class MoviesController < ApplicationController
  def index

    @movies = YAML.load_file(Rails.root.join('config', 'movie.yml'))

    respond_to do |f|
      f.html
      f.json{ render json: @movies}
    end

  end
end
