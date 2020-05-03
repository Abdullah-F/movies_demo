import React from "react";
import Movie from "./Movie/Movie";
const moviesList = props => {
  const getMovies = () => {
    return props.movies.map(movie => {
      return (
        <Movie
          key={movie.id}
          movie={movie}
          changed={props.changed}
          value={props.value}
        />
      );
    });
  };

  return <div>{getMovies()}</div>;
};

export default moviesList;
