    # Node does not have a define function, so we use amdefine
    if typeof define != 'function'
      define = require('amdefine')(module)

    # RequireJS implementation, works on Node as well as in the browser
    define (require) ->

      React = require 'react'

      Welcome = React.createClass(
        _handleClick: ->
          alert 'hiii'
        render: ->
          <div>
            <div id="top-bar">
              <a href="#">Some Link</a>&nbsp;|&nbsp;
              <a href="#">Some Link</a>&nbsp;|&nbsp;
              <a href="#">Some Link</a>&nbsp;|&nbsp;
              <button onClick={@_handleClick}>A button</button>
            </div>
            <h1>Hello, world.</h1>
            <p>This is a React starter template written in coffeescript.</p>
            <p>Hey, I have a <a href="https://benzhang.xyz/">blog</a>!</p>
            <p><i className="fa fa-star"></i> Star this project on <a href="https://github.com/ben-z/react-starter-coffee-tutorial"> Github</a></p>
          </div>
      )

      return Welcome
