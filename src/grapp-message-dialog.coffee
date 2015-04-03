Polymer 'grapp-message-dialog',

  created: ->
    @heading = 'Message'
    @closeLabel = 'Close'
    @htmlMessage = false

  show: (message) ->
    @message = message if message
    promise = new Promise ((resolve) ->
      @resolve = resolve
    ).bind @
    @$.dialog.open()
    promise

  close: ->
    @async -> @$.dialog.close()
    @resolve()
