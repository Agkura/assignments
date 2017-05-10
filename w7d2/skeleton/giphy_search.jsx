import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

const store = configureStore();

document.addEventListener("DOMContentLoaded", ()=>{
  ReactDOM.render(<Root store={store} />, document.getElementById("root"));
});


import { receiveSearchGiphys, fetchSearchGiphys } from './actions/giphy_actions';
window.store = store;
window.receiveSearchGiphys = receiveSearchGiphys;
window.fetchSearchGiphys = fetchSearchGiphys;
