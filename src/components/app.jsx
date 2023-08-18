import React from 'react';
import {
  BrowserRouter, Routes, Route, NavLink,
} from 'react-router-dom';
import { library } from '@fortawesome/fontawesome-svg-core';
import { faHouseLaptop } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import Home from './home';

library.add(faHouseLaptop);

function App(props) {
  return (
    <BrowserRouter>
      <div id="nav-bar">
        <Nav />
        <Routes>
          <Route path="/" element={<Home />} />
        </Routes>
      </div>
    </BrowserRouter>
  );
}

function Nav(props) {
  return (
    <nav>
      <ul>
        <div>
          <li><NavLink to="/"><FontAwesomeIcon id="home-icon" icon="house-laptop" /></NavLink></li>
        </div>
        <div id="non-home-nav">
          <li><NavLink to="/analytics">Analytics</NavLink></li>
          <li><NavLink to="/query">Make a Query</NavLink></li>
          <li><NavLink to="/about">About</NavLink></li>
        </div>
      </ul>
    </nav>
  );
}

export default App;
