require 'coffee-script'
http = require 'http'

lib = require './lib'

app = lib.app.app
port = app.get 'port'
http.createServer(app).listen(port, ->
  console.log "Server listen on port %d", port
)
