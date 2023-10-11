class MoviesController < ApplicationController
  def index
    @movies =["Batman" , "Spiderman ", "Dedpol", "Ironman"]
  end
end
