import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component{
  constructor(props){
    super(props);
    this.fetchSearchGiphys = props.fetchSearchGiphys;
    this.state = {search: ""};
  }

  handleSearch(event){
    this.setState({
      search: event.target.value
    });
  }

  handleSubmit(event){
    event.preventDefault();
    debugger;
    this.fetchSearchGiphys({
      searchTerm: this.state.search
    }).then( ()=>{
      this.setState({search: ""});
    });
  }

  render(){
    return (
      <div id="search-bar">
        <form className="search-form" onSubmit={this.handleSubmit.bind(this)}>
          <input
              type="text"
              value={this.state.search}
              placeholder="Search keys..."
              onChange={this.handleSearch.bind(this)}>
          </input>
          <br/>
          <input type="submit" value="Search"></input>
        </form>
        <GiphysIndex giphys={this.props.giphys}/>
      </div>
    );
  }
}

export default GiphysSearch;
