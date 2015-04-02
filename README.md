grapp-dialogs
=============

Dialog web components based on [Polymer elements](https://www.polymer-project.org/0.5/docs/elements/).

Build with Polymer 0.5.5


grapp-confirmation-dialog
=========================

This is a simple yes/no confirmation dialog. It displays a heading, a message (probably a question) and 
a confirmation and a cancellation button. The text that is displayed on these elements is provides as
component attributes.

The dialog is shown by calling the ask() method. The message text can optionally be set at this point
through a parameter to this function.

ask() returns an ES6 promise that is fulfilled when the user presses the confirmation button and is
rejected when the user presses the cancellation button.


Attributes
----------


  * **heading**
  
    - *type:* string
    - *default:* 'Please confirm this action'

    The title of the confirmation dialog.


  * **message**

    - *type:* string
    - *default:* 'Are you sure?'

    The message text displayed in the dialog body.


  * **htmlMessage**

    - *type:* boolean
    - *default:* false

    If set to true, 'message' can contain HTML that is inserted into the dialog body without 
    escaping (beware of security risks!). 


  * **yesLabel**

    - *type:* string
    - *default:* 'Yes'
    
    The label of the confirmation button.


  * **noLabel**

    - *type:* string
    - *default:* 'No'
    
    The label of the cancellation button.


  * **yesIcon**

    - *type:* string (core icon identifier)
    - *default:* undefined
    
    Optionally adds a core icon to the label of the confirmation button.


  * **noIcon**

    - *type:* string (core icon identifier)
    - *default:* undefined
    
    Optionally adds a core icon to the label of the cancellation button.


Methods
-------

  * **ask(message)**
  
    - *message:* (Optional) The message text to display
    - *Returns:* a promise that is fulfilled if the confirmation button is pressed and rejected if
    the cancellation button is pressed.

    Show the dialog.  


  * **confirm()**
  
    Programmatically close the dialog and fulfill the promise.


  * **cancel()**
  
    Programmatically close the dialog and reject the promise.


grapp-message-dialog
====================

This is a simple message dialog. It displays a heading, a message and a close button. 
The text that is displayed on these elements is provides as component attributes.

The dialog is shown by calling the show() method. The message text can optionally be set at this point
through a parameter to this function.

show() returns an ES6 promise that is fulfilled when the user presses the close button.


Attributes
----------


  * **heading**
  
    - *type:* string
    - *default:* 'Message'

    The title of the confirmation dialog.


  * **message**

    - *type:* string
    - *default:* 'Click "close" to close'

    The message text displayed in the dialog body.


  * **htmlMessage**

    - *type:* boolean
    - *default:* false

    If set to true, 'message' can contain HTML that is inserted into the dialog body without 
    escaping (beware of security risks!). 


  * **closeLabel**

    - *type:* string
    - *default:* 'Close'
    
    The label of the close button.


  * **closeIcon**

    - *type:* string (core icon identifier)
    - *default:* undefined
    
    Optionally adds a core icon to the label of the close button.


Methods
-------

  * **show(message)**
  
    - *message:* (Optional) The message text to display
    - *Returns:* a promise that is fulfilled if the close button is pressed.

    Show the dialog.  


  * **close()**
  
    Programmatically close the dialog and fulfill the promise.
