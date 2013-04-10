fs = require 'fs'
_ = require 'underscore'

load_tileinfo = (filename) ->
  contents = fs.readFileSync filename, 'utf-8'
  tmp = null
  define = (list, func) -> tmp = func()
  func = new Function "define", contents
  func(define)
  
  return _.without(_.keys(tmp), 'tile_count', 'get_img', 'get_tile_info')

module.exports.load_tileinfo = load_tileinfo
