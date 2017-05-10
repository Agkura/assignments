import { combineReducers } from 'redux';

import GiphysReducer from './giphys_reducer';

const RootReducer =  combineReducers({
  giphsy: GiphysReducer
});

export default RootReducer;
