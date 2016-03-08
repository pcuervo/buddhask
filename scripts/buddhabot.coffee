Conversation = require('hubot-conversation')

module.exports = (robot) ->
  switchBoard = new Conversation(robot)
  robot.hear(/cena/, (msg) ->
    msg.reply 'Cuantos amigos vienen?'
    dialog = switchBoard.startDialog(msg)
    dialog.addChoice(/4/, (msg2) ->
      msg.reply 'Te recomiendo preparar una ensalada griega, pasta Alfredo con
    camarones y salmón a la mantequilla, y vino blanco; con esto serás el mejor anfitrión.'
      msg.reply 'Si quieres la receta ve al siguiente Link.'
      msg.reply 'Gracias por usar Buddask.'))

  robot.hear(/servicio/, (msg) ->
    msg.reply 'Hola, que fue lo que te sucedió?'
    dialog = switchBoard.startDialog(msg)
    dialog.addChoice(/horas/, (msg2) ->
      msg.reply 'Entiendo tu molesta, es una lata esperar!. Con gusto en este
    momento hago lo necesario para enviartela ASAP a tu domicilio.'
      msg.reply 'Por lo pronto te envío un cupón de Starbucks para que la espera sea más placentera con tu bebida favorita.'
      msg.reply 'Para ver el Tracking de tu tarjeta ve al siguiente Link'
      msg.reply 'Gracias por usar Buddask'))

  robot.hear(/que color me recomiendas/, (msg) ->
    msg.reply 'Por tu foto de perfil, te recomiendo que pruebes el nuevo rojo
    carmín de la nueva línea de Nutrisse colorissimos, se te va  ver increíble!'
    dialog = switchBoard.startDialog(msg)
    dialog.addChoice(/como me lo debo pintar/, (msg2) ->
      msg.reply 'Ve al siguiente Link para que veas nuestros tutoriales de aplicación, y si tienes dudas, avísame!'
      msg.reply 'Gracias por usar Buddhask'))

  robot.hear(/hueco en la pared/, (msg) ->
    msg.reply 'Hola, ve al siguiente Link para que veas nuestros tutoriales de resane.'
    dialog = switchBoard.startDialog(msg)
    dialog.addChoice(/donde/, (msg2) ->
      msg.reply 'Te recomiendo ir a la tienda Sherwin Williams que está en Gustavo Baz, esa te queda cerca'
      msg.reply 'Te recuerdo que los colores de moda son los cálidos, aquí podrás ver muchas fotos con ideas para tu espacio.'
      msg.reply 'Gracias por usar Buddhask'))
