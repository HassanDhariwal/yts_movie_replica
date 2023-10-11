class MoviesController < ApplicationController
  def index
    @movies = [
      {:title=> 'Batman'    , :year=> 2023,    :rating=> '6.7 / 10', :type=> 'Action',  :image_path=> 'marcin.jpg' },
      {:title=> 'Spiderman' , :year=> 2023,    :rating=> '6.7 / 10', :type=> 'Funny',   :image_path=> 'spiderman1.jpg' },
      {:title=> 'Dedpol'    , :year=> 2023,    :rating=> '6.7 / 10', :type=> 'Darama',  :image_path=> 'dedpol.jpg' },
      {:title=> 'Ironman'   , :year=> 2023,    :rating=> '6.7 / 10', :type=> 'Sci',     :image_path=> 'emmanuel.jpg' }
    ]
  end
end
