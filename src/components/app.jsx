import React from 'react';
import {
  BrowserRouter, Routes, Route, NavLink, useParams,
} from 'react-router-dom';
import Counter from './counter';
import Controls from './controls';

function App(props) {
  return (
    <BrowserRouter>
      <div>
        <Nav />
        <Routes>
          <Route path="/" element={<Welcome />} />
          <Route path="/about" element={<About />} />
          <Route path="/test/:id" element={<Test />} />
          <Route path="*" element={<FallBack />} />
        </Routes>
      </div>
    </BrowserRouter>
  );
}

function About(props) {
  return <div> All there is to know about me </div>;
}

function Welcome(props) {
  return (
    <div>
      <Counter />
      <Controls />
    </div>
  );
}

function Nav(props) {
  return (
    <nav>
      <ul>
        <li><NavLink to="/">Home</NavLink></li>
        <li><NavLink to="/about">About</NavLink></li>
        <li><NavLink to="/test/id1">test id1</NavLink></li>
        <li><NavLink to="/test/id2">test id2</NavLink></li>
      </ul>
    </nav>
  );
}

function Test(props) {
  const { id } = useParams();
  return <div> ID: {id} </div>;
}

function FallBack(props) {
  return <div>URL Not Found</div>;
}

export default App;
