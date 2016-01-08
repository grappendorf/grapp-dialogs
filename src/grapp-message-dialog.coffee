Polymer

  is: 'grapp-message-dialog'

  properties:
    heading: {type: String, value: 'Message'}
    message: {type: String}
    htmlMessage: {type: Boolean, value: false}
    closeLabel: {type: String, value: 'close'}
    closeIcon: {type: String}

  show: (message) ->
    @message = message if message
    if @htmlMessage
      domBind = document.createElement 'template', 'dom-bind'
      elem = domBind.content.ownerDocument.createElement 'div'
      elem.innerHTML = @message
      domBind.content.appendChild elem
      @$.htmlMessage.innerHTML = ''
      @$.htmlMessage.appendChild domBind
    @$.dialog.open()
    new Promise (resolve) =>
      @resolve = resolve

  close: ->
    @async -> @$.dialog.close()
    @resolve()
