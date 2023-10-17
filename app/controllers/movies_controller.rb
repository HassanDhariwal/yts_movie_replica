class MoviesController < ApplicationController
  def index

    @movies = YAML.load_file(Rails.root.join('config', 'movie.yml'))
    only_name_year = []
    @movies.each do |a|
      a.each do |movie|
        only_name_year << {title: movie['title'], year:movie['year'],rating:movie['rating']}
       end
    end

    respond_to do |formate|
      formate.html
      # formate.json{ render json: @movies.map { |movie| movie['title']  }}
      formate.json { render json: only_name_year }
    end
  end

end
