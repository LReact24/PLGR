#!/bin/bash

PROJECT="plgr"

cat << EOF > package.json
{
  "name": "$PROJECT",
  "type": "module",
  "version": "0.0.1",
  "scripts": {
    "dev": "next dev"
  },
  "dependencies": {
  },
  "devDependencies": {
  }
}
EOF

mkdir app

cat << EOF > app/page.js
import { useState } from 'react';

function Header({ title }) {
  return <h1>{title ? title : 'Default title'}</h1>;
}

export default function HomePage() {
  const names = ['Ada Lovelace', 'Grace Hopper', 'Margaret Hamilton'];

  const [likes, setLikes] = useState(0);

  function handleClick() {
    setLikes(likes + 1);
  }

  return (
    <div>
      <Header title="Develop. Preview. Ship." />
      <ul>
        {names.map((name) => (
          <li key={name}>{name}</li>
        ))}
      </ul>

      <button onClick={handleClick}>Like ({likes})</button>
    </div>
  );
}
EOF