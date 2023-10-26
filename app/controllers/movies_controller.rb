class MoviesController < ApplicationController
  def index



    @movies = YAML.load_file(Rails.root.join('config', 'movie.yml'))


    row_vise_recode= []
    i = 1

    @movies.each do |row|

      movies_recode = []

      row.each do |movie|
          movies_recode << {title: movie['title'], year:movie['year'],rating:movie['rating']}
      end
      row_vise_recode  << { "row_#{i}" => movies_recode }
        i = i+1
    end


    respond_to do |formate|
      formate.html
      formate.json { render json: row_vise_recode }
    end
  end
end
