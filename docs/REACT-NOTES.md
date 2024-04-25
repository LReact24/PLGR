# React Notes

## React intro

- react.dev: Start a New React Project <https://react.dev/learn/start-a-new-react-project>
- nextjs.org: Learn Next.js <https://nextjs.org/learn/dashboard-app>
- nextjs.org: React Foundations <https://nextjs.org/learn/react-foundations>
- nextjs.org: Updating UI with Javascript <https://nextjs.org/learn/react-foundations/updating-ui-with-javascript>
- nextjs.org: Imperative vs. declarative programming <https://nextjs.org/learn/react-foundations/updating-ui-with-javascript#imperative-vs-declarative-programming>
- nextjs.org: you'll need a JavaScript compiler, such as a Babel
  , to transform your JSX code into regular JavaScript. <https://nextjs.org/learn/react-foundations/getting-started-with-react#what-is-jsx>
- nextjs.org: react **components**" are UI building blocks:
  - are JS functions (with capital-letter,
  - `function Header() { return <h1>Develop. Preview. Ship.</h1>; }`),
  - and you call those fun as `<Header />`
  - <https://nextjs.org/learn/react-foundations/building-ui-with-components#components>
- nextjs.org: Displaying Data with **Props**:
  - passing information to components
  - `<Header title="React" />`
  - `function Header(props) { return <h1>{props.title}</h1>; }`
  - or
  - `function Header({title}) { return <h1>{`Cool ${title}`}</h1>; }`
  - <https://nextjs.org/learn/react-foundations/displaying-data-with-props>
  - Destructuring assignment <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment>
- nextjs.org: `array.map()` usage:

  ```js
  function HomePage() {
    const names = ["Ada Lovelace", "Grace Hopper", "Margaret Hamilton"];

    return (
      <div>
        <Header title="Develop. Preview. Ship." />
        <ul>
          {names.map((name) => (
            <li key={name}>{name}</li>
          ))}
        </ul>
      </div>
    );
  }
  ```

  - <https://nextjs.org/learn/react-foundations/displaying-data-with-props#iterating-through-lists>

- nextjs.org: interactivity, handling events with `onClick`, `onChange`,
  `onSubmit`

  ```js
  function HomePage() {
    // 	...
    function handleClick() {
      console.log("increment like count");
    }

    return (
      <div>
        {/* ... */}
        <button onClick={handleClick}>Like</button>
      </div>
    );
  }
  ```

  - <https://nextjs.org/learn/react-foundations/updating-state>

- nextjs.org: react has a set of functions called **hooks**

  - to add additional logic such as state (e.g: to store and increment)
    to your components

  ```js
  function HomePage() {
    // ...
    const [likes, setLikes] = React.useState(0);

    function handleClick() {
      setLikes(likes + 1);
    }

    return (
      <div>
        {/* ... */}
        <button onClick={handleClick}>Likes ({likes})</button>
      </div>
    );
  }
  ```

  - Note: Props are read-only information that's passed to components.
    State is information that can change over time,
    usually triggered by user interaction.
  - <https://nextjs.org/learn/react-foundations/updating-state>
  - morover:
    - <https://react.dev/learn/adding-interactivity>
    - <https://react.dev/learn/managing-state>

## From React to Next.js

`index.html`

```js
<html>
  <body>
    <div id="app"></div>

    <script src="https://unpkg.com/react@18/umd/react.development.js"></script>
    <script src="https://unpkg.com/react-dom@18/umd/react-dom.development.js"></script>
    <script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>

    <script type="text/jsx">
      const app = document.getElementById("app")

      function Header({ title }) {
        return <h1>{title ? title : "Default title"}</h1>
      }

      function HomePage() {
        const names = ["Ada Lovelace", "Grace Hopper", "Margaret Hamilton"]

        const [likes, setLikes] = React.useState(0)

        function handleClick() {
          setLikes(likes + 1)
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
        )
      }

      const root = ReactDOM.createRoot(app);
      root.render(<HomePage />);
    </script>
  </body>
</html>
```
