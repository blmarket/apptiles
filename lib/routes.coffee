path = require 'path'

load_tile = require './load_tile'

maintiles = load_tile.load_tileinfo path.join(__dirname, '../contrib/tileinfo-main.js')

index = (req, res, next) ->
  res.render 'index.jade', {
    tiles: maintiles
  }

setRoutes = (app) ->
  app.get '/', index

module.exports.setRoutes = setRoutes
