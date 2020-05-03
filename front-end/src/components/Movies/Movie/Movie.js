import React, { useState, useEffect } from "react";
import { useSelector } from "react-redux";
import styled from "styled-components";
import Input from "../../UI/Input/Input";
import Button from "../../UI/Button/Button";
import axios from "../../../axios_base_url";

const StyledDiv = styled.div`
  text-align: center;
  display: flex;
  flex-wrap: wrap;
  align-content: space-between;
  padding: 20px;
  font-size: 15px;
  width: 100%;
  background-color: black;
  color: white;
  margin: 15px;
  p {
    margin: 10px;
  }
`;

const Movie = props => {
  const [rating, setRating] = useState(1);
  const { movie } = props;
  const user = useSelector(state => state.signIn.user);

  useEffect(() => {
    setRating(props.movie.movie_ratings.find(r => r.user_id == user.id).rating);
  }, [movie]);

  const changed = event => {
    setRating(event.target.value);
  };

  const clicked = () => {
    console.log(localStorage.getItem("token"));
    const headers = {
      "Content-Type": "application/json",
      Authorization: localStorage.getItem("token")
    };
    axios
      .post(
        `/movies/${props.movie.id}/add_rating.json`,
        {
          rating: rating
        },
        {
          headers: headers
        }
      )
      .then(response => {})
      .then(error => console.log(error));
  };

  return (
    <StyledDiv>
      <p>
        name: <span> {props.movie.name}</span>
      </p>
      <p>
        release date:
        <span> {props.movie.release_date}</span>
      </p>
      <div>
        <Input
          elementType="input"
          label="Add Ratting"
          changed={changed}
          value={rating}
        />
        <Button buttonType="Success" clicked={clicked}>
          Submit Rating
        </Button>
      </div>
    </StyledDiv>
  );
};

export default Movie;
