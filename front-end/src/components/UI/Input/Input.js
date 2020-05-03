import React from "react";
import Classes from "./Input.module.css";

const input = props => {
  const inputElement = (
    <input
      onChange={props.changed}
      className={Classes.InputElement}
      {...props.elementConfig}
      value={props.value}
    />
  );
  return (
    <div>
      <label className={Classes.Label}>{props.label}</label>
      {inputElement}
    </div>
  );
};

export default input;
