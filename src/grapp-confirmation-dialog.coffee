Polymer 'grapp-confirmation-dialog',

  created: ->
    @heading = 'Confirmation'
    @yesLabel = 'Yes'
    @noLabel = 'No'
    @htmlMessage = false

  ask: (message) ->
    @message = message if message
    promise = new Promise ((resolve, reject) ->
      @resolve = resolve
      @reject = reject
    ).bind @
    @$.dialog.open()
    promise

  confirm: ->
    @async -> @$.dialog.close()
    @resolve()

  cancel: ->
    @async -> @$.dialog.close()
    @reject()
