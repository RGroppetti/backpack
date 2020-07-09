import React from "react";
import "./App.css";

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      database : [],
      currentBackpack : [],
      availableItems : [],
      fillout: true
    };
    // this.DisplayUserstoggle = this.DisplayUserstoggle.bind(this)
  }
  componentDidMount(){
    fetch('http://localhost:3001/', {
      method: "GET", 
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(),
    })
      .then((response) => this.setState({database:response.json()}))
      .then((data) => {
        console.log("Success:");
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  }
  render() {
   

    return (
      <div className="App">
        <h1>Backpack</h1>
      
      </div>
    );
  }
}
export default App;
