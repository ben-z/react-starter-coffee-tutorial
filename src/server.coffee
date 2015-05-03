# Express server
express = require 'express'
# Create an Express object named 'app'
app = express()
# Port of the server
port = process.env.PORT || 3000
# Entry point of our app
index = require './app/index'
# This is a ReactJS app
React = require 'react'

# serve static files
app.use '/js', express.static(__dirname+'/'+(process.env.JS_FOLDER || 'app'))
app.use '/css', express.static(__dirname+'/'+(process.env.CSS_FOLDER || 'css'))

# Routes
app.get '/', (req, res) ->
  rendered = React.renderToStaticMarkup(React.createElement(index, {component:'welcome'}))
  res.send(rendered)

# This starts the server
app.listen port, ->
  console.log 'Listening on http://localhost:' + port
