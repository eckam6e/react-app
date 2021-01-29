import React from 'react';
import './App.css';
import {
  BrowserRouter as Router,
  Switch,
  Route,
} from "react-router-dom";

// components
import { Users } from './containers/Users.jsx';
import { Recipes } from './containers/Recipes.jsx';

function App() {
  return (
    <Router>
      <Switch>
        // 店舗一覧ページ
        <Route
          exact
          path="/users">
          <Users />
        </Route>
        // フード一覧ページ
        <Route
          exact
          path="/recipes"
        >
          <Recipes />
        </Route>
      </Switch>
    </Router>
  );
}

export default App;
