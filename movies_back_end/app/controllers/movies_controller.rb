class MoviesController < ApplicationController
  def index
    render json: Movie.all, status: :ok #no pagination just keeping things minimal
  end

  def add_rating
    result = ::Movies::AddRating.call(params.dup.merge(current_user: current_user))
    if result.success?
      render json: result.movie_rating, status: :created
    else
      render json: result.errors, status: :unprocessable_entity
    end
  end
end
