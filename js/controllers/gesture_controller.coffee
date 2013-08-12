GestureController = ($scope, xbmcRemote) ->
  # set up the animations
  letter = angular.element('#letter')
  letter[0].addEventListener 'webkitAnimationEnd', ->
    letter.removeClass 'glow'
    console.log 'animationend'

  # register the gesture recognition
  gestureTarget = angular.element '#gesture-target'
  hammeredGestureTarget = gestureTarget.hammer()

  hammeredGestureTarget.on 'swipeup', -> 
    letter.removeClass()
    letter.addClass 'glow icon-up'
    xbmcRemote.up()
  hammeredGestureTarget.on 'swiperight', -> 
    letter.removeClass()
    letter.addClass 'glow icon-right'
    xbmcRemote.right()
  hammeredGestureTarget.on 'swipedown', -> 
    letter.removeClass()
    letter.addClass 'glow icon-down'
    xbmcRemote.down()
  hammeredGestureTarget.on 'swipeleft', -> 
    letter.removeClass()
    letter.addClass 'glow icon-left'
    xbmcRemote.left()
  gestureTarget.on 'click', -> 
    letter.removeClass()
    letter.addClass 'glow icon-up-hand'
    xbmcRemote.select()
  hammeredGestureTarget.on 'doubletap', -> 
    letter.removeClass()
    letter.addClass 'glow icon-ccw'
    xbmcRemote.back()
  hammeredGestureTarget.on 'hold', -> 
    letter.removeClass()
    letter.addClass 'glow icon-up-circled2'
    xbmcRemote.contextMenu()