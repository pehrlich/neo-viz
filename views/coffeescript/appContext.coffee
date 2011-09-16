$ = jQuery

class AppContext

  constructor: ->
    @nodeFilter = ''
    @keyFilter = ''
    @nodeCount = 10

  setNodeCount: (n) ->
    if (@nodeCount != n)
      @nodeCount = n
      this.trigger("nodeCountChanged")

  getNodeCount: () ->
    @nodeCount

  setKeyFilter: (keyFilter) ->
    if (@keyFilter != keyFilter)
      @keyFilter = keyFilter
      this.trigger("keyFilterChanged")

#    if keyFilterString?.trim() is ''
#      @keyFilter = null
#    else
#      string = "_neo_id, #{keyFilterString}"
#      @keyFilter = (new RegExp(key.trim()) for key in string.split(','))


  getKeyFilter: ->
    @keyFilter

  setNodeFilter: (filter) ->
    if (@nodeFilter != filter)
      @nodeFilter = filter
      this.trigger("nodeFilterChanged")

    #@filter = if filter then new RegExp(filter, 'i') else null

  getNodeFilter: ->
    @nodeFilter

  trigger: (eventName) ->
    $("body").trigger(eventName)

$ ->

  root = exports ? this
  root.theAppContext = new AppContext
