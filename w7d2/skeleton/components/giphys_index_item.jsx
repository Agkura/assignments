import React from 'react';

class GiphysIndexItem extends React.Component{
  constructor(props){
    super(props);
  }

  render(){
    return (
      <li>{this.props.giphy}</li>
    );
  }
}

export default GiphysIndexItem;
