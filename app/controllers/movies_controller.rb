class MoviesController < ApplicationController
  def index
    # binding.pry

    @movies = YAML.load_file(Rails.root.join('config', 'movie.yml'))

    only_name_year = []
    i = 1
    @movies.each do |a|
      i = i+1
      puts "row no is #{i}"
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
