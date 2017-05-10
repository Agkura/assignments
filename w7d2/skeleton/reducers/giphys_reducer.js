import { RECEIVE_SEARCH_GIPHYS, REQUEST_SEARCH_GIPHYS } from '../actions/giphy_actions';

const GiphysReducer = (state = [], action) =>{
  switch(action.type){
    case RECEIVE_SEARCH_GIPHYS:
      debugger;
      return action.giphys;
    default:
      return state;
  }
};

export default GiphysReducer;
