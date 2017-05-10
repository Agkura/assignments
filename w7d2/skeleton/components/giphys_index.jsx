import React from 'react';

import GiphysIndexItem from './giphys_index_item';


class GiphysIndex extends React.Component{
  constructor(props){
    super(props);
  }

  render(){
    return (<ul>
      {this.props.giphys.forEach( (giphy) => {
        <GiphysIndexItem giphy={giphy}/>
      })}
    </ul>
  );
  }
}

export default GiphysIndex;
