import React, { Component } from "react";
import Aux from "../Aux/Aux";
import ToolBar from "../../components/Navigation/Toolbar/Toolbar";

class Layout extends Component {
  render() {
    return (
      <Aux>
        <ToolBar isSignedIn={this.props.isSignedIn} />
        <main>{this.props.children}</main>
      </Aux>
    );
  }
}

export default Layout;
