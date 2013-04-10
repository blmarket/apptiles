index = (req, res, next) ->
  res.render 'index.jade'

setRoutes = (app) ->
  app.get '/', index

module.exports.setRoutes = setRoutes
