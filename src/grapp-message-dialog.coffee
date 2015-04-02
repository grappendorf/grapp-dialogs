Polymer 'grapp-message-dialog',

  created: ->
    @heading = 'Message'
    @message = 'Click "close" to close'
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
