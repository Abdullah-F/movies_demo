class Movies::AddRating
  include Interactor
  delegate :current_user, :id, :rating, :fail!, to: :context

  def call
    movie = Movie.find(id)
    movie_rating = movie.user_ratings(current_user.id)
    movie_rating = MovieRating.new(user: current_user) if movie_rating.nil?
    movie_rating.rating = rating
    movie.movie_ratings << movie_rating
    context.movie_rating = movie_rating

  rescue ActiveRecord::RecordNotFound => e
    fail!(errors: [movie: 'could not find the movie'])
  end
end

