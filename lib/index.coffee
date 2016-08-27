'use strict'

omit    = require 'lodash.omit'
ghpages = require 'gh-pages'
path    = require 'path'

###*
 * bumped-gh-pages – Publishing files to a gh-pages branch on GitHub.
###
module.exports = (bumped, plugin, cb) ->
  folder = plugin.opts.folder
  return cb new TypeError('Need to specify the folder.') unless folder

  opts = omit(plugin.opts, 'folder')
  opts.logger = (msg) -> plugin.logger.success(msg)

  basePath = path.resolve folder
  ghpages.publish basePath, opts, cb
