import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {result: 0, num1: '', num2: ''};
    this.setnum1 = this.setnum1.bind(this);
    this.setnum2 = this.setnum2.bind(this);
    this.adding = this.adding.bind(this);
    this.subtracting = this.subtracting.bind(this);
    this.multiplying = this.multiplying.bind(this);
    this.dividing = this.dividing.bind(this);
    this.clear = this.clear.bind(this);
  }

  setnum1(event) {
    event.preventDefault();
    let stringNum = event.target.value;
    let num = parseInt(stringNum);
    this.setState({num1: num});
  }

  setnum2(event) {
    event.preventDefault;
    let stringNum = event.target.value;
    let num = parseInt(stringNum);
    this.setState({num2: num});
  }

  adding(event){
    event.preventDefault();
    this.setState({result: this.state.num1 + this.state.num2 });
  }
  subtracting(event){
    event.preventDefault();
    this.setState({result: this.state.num1 - this.state.num2 });
  }
  multiplying(event){
    event.preventDefault();
    this.setState({result: this.state.num1 * this.state.num2 });
  }
  dividing(event){
    event.preventDefault();
    this.setState({result: this.state.num1 / this.state.num2 });
  }

  clear(event){
    event.preventDefault();
    this.setState({result: 0, num1: '', num2:''});
  }

  render() {

    const {result, num1, num2} = this.state;
    return (
      <div>
        <input value={num1} onChange={this.setnum1}></input>
        <br />
        <input value={num2}onChange={this.setnum2}></input>
        <br />
        <button onClick={this.adding}>+</button>
        <button onClick={this.subtracting}>-</button>
        <br />
        <button onClick={this.multiplying}>*</button>
        <button onClick={this.dividing}>/</button>
        <br />
        <button onClick={this.clear}>Clear</button>
        <h1>{this.state.result}</h1>
      </div>
    );
  }
}

export default Calculator;
