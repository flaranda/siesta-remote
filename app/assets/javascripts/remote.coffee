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
  $( '#red' ).click ->
    send_trigger( 'red' )
  $( '#blue' ).click ->
    send_trigger( 'blue' )
  $( '#yellow' ).click ->
    send_trigger( 'yellow' )
  $( '#green' ).click ->
    send_trigger( 'green' )
  $( '#white' ).click ->
    send_trigger( 'white' )
  $( '#black' ).click ->
    send_trigger( 'black' )
