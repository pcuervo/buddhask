Conversation = require('hubot-conversation')
module.exports = (robot) ->
  switchBoard = new Conversation(robot)
  robot.hear /actualizar datos a ckan/, (msg) ->
    msg.reply 'Estas seguro que deseas actualizar datos a CKAN??'
    #Start a dialog with the user that sent this message.
    dialog = switchBoard.startDialog(msg)
    #Provide choices for the next step, wait for the user.
    dialog.addChoice /si/, (msg2) ->
      msg.reply 'Actualizando data de ADELA a CKAN'
    #The dialog will expire after 30 secods.
