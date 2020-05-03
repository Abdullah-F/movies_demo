import React, { useState, useEffect } from "react";
import Classes from "./Movies.module.css";
import axios from "../../axios_base_url";
import MoviesList from "../../components/Movies/MoviesList";
const Movies = () => {
  const [movies, setMovies] = useState([]);
  const [perPage] = useState(10);
  const [page, setPage] = useState(1);

  const handlePageClick = data => {
    let selected = data.selected;
    let page = Math.ceil(selected + 1);
    setPage(page);
  };

  useEffect(() => {
    const queryParams = { page: page, per_page: perPage };
    let queryString = "";
    for (const key in queryParams) {
      queryString += `&${key}=${queryParams[key]}`;
    }

    queryString = queryString.slice(1, queryString.length);

    console.log(localStorage.getItem("token"));
    const headers = {
      "Content-Type": "application/json",
      Authorization: localStorage.getItem("token")
    };
    axios
      .get(`/movies.json?${queryString}`, {
        headers: headers
      })
      .then(response => {
        setMovies(response.data);
      })
      .then(error => console.log(error));
  }, [page, perPage]);

  return (
    <div className={Classes.Movies}>
      [note] rating must be a value between zero and ten. validation only on the
      backend. no validation is done here. [note] i never cared about drying
      front end code in this task. like dring requests and using well designed
      code for them.
      <MoviesList movies={movies} />
    </div>
  );
};

export default Movies;
