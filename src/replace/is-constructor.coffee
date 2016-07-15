_ = require('lodash')

module.exports = (thing) ->
  return unless thing?.prototype?
  props = Object.getOwnPropertyNames(thing.prototype)
  _(props).map((p) -> p != 'constructor' && _.isFunction(thing.prototype[p])).any();
  

