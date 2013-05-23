$( document ).ready ->
  Pusher.log = ( ( message ) ->
    if window.console and window.console.log
      window.console.log( message )
  )

  start_pusher()
  configure_buttons()

@start_pusher = () ->
  @pusher = new Pusher( '302fb53f53282bcb6c79' )
  @channel = pusher.subscribe( 'private-simon' )

@send_trigger = ( movement ) ->
  @channel.trigger( "client-movement", movement )

@configure_buttons = () ->
  $( '#movement_red' ).click ->
    send_trigger( 'red' )
  $( '#movement_blue' ).click ->
    send_trigger( 'blue' )
  $( '#movement_yellow' ).click ->
    send_trigger( 'yellow' )
  $( '#movement_green' ).click ->
    send_trigger( 'green' )
  $( '#movement_white' ).click ->
    send_trigger( 'white' )
  $( '#movement_black' ).click ->
    send_trigger( 'black' )
