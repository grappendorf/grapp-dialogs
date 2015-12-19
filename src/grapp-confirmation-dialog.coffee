Polymer

  is: 'grapp-confirmation-dialog'

  properties:
    heading: {type: String, value: 'Confirmation'}
    message: {type: String}
    htmlMessage: {type: Boolean, value: false}
    yesLabel: {type: String, value: 'Yes'}
    noLabel: {type: String, value: 'No'}
    yesIcon: {type: String}
    noIcon: {type: String}

  ask: (message) ->
    @message = message if message
    if @htmlMessage
      domBind = document.createElement 'template', 'dom-bind'
      elem = domBind.content.ownerDocument.createElement 'div'
      elem.innerHTML = @message
      domBind.content.appendChild elem
      @$.htmlMessage.innerHTML = ''
      @$.htmlMessage.appendChild domBind
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
