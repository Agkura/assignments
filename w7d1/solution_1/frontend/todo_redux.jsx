import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);
  const newStore = applyMiddlewares(store, addLoggingToDispatch);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={newStore} />, root);
});

const addLoggingToDispatch = store => next => action =>{
  let qdispatch = store.dispatch;
  console.log(store.getState());
  console.log(action);
  let result = qdispatch(action);
  console.log(store.getState());
  return result;
}

const applyMiddlewares = (store, ...middleware) => {
  let dispatch = store.dispatch;
  middleware.forEach((mw) => {
    dispatch = mw(store)(dispatch);
  });
  return Object.assign({}, store, { dispatch });
};
