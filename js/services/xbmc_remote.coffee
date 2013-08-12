xbmcmagick = angular.module 'xbmcmagick'
xbmcmagick.factory 'xbmcRemote', ($http, xbmcSettings, $rootScope) ->
  sendAction = (action, extra = {}) ->
    protocol = 'http'
    settings = xbmcSettings.settings
    auth = settings.auth
    auth = "#{auth}@" if auth.length > 0
    address = settings.address
    port = settings.port

    url = "#{protocol}://#{auth}#{address}:#{port}/jsonrpc"
    
    data = {jsonrpc: "2.0", method: action, id: 1}

    angular.extend data, extra
    console.log "action -> #{action}"
    console.log "data -> #{JSON.stringify(data)}"

    req = $.ajax
      url: url
      data: JSON.stringify data
      method: 'POST'
      dataType: 'json'
      headers:
        'Content-Type': 'application/json;charset=UTF-8'

    req.done (a) -> 
      console.log 'done'
      console.log JSON.stringify a

    req.fail (a) ->
      console.log 'fail'
      console.log JSON.stringify a

  # Input methods
  up = -> sendAction 'Input.Up'
  right = -> sendAction 'Input.Right'
  down = -> sendAction 'Input.Down'
  left = -> sendAction 'Input.Left'
  select = -> sendAction 'Input.Select'
  back = -> sendAction 'Input.Back'
  contextMenu = ->
    sendAction 'Input.ShowOSD'
    sendAction 'Input.ContextMenu'

  # Player methods
  play = -> sendAction 'Player.PlayPause', params: [1]
  pause = -> sendAction 'Player.PlayPause', params: [1]
  info = -> sendAction 'Player.GetActivePlayer'

  return {
    up: up
    right: right
    down: down
    left: left
    select: select
    back: back
    play: play
    pause: pause
    info: info
    contextMenu: contextMenu
  }