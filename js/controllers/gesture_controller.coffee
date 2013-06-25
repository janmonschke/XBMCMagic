GestureController = ($scope, xbmcRemote) ->
  # set up the animations
  letter = angular.element('#letter')
  letter[0].addEventListener 'webkitAnimationEnd', ->
    letter.removeClass 'grow'
    console.log 'animationend'

  # register the gesture recognition
  gestureTarget = angular.element '#gesture-target'
  hammeredGestureTarget = gestureTarget.hammer()

  hammeredGestureTarget.on 'swipeup', -> 
    letter.addClass 'grow'
    xbmcRemote.up()
  hammeredGestureTarget.on 'swiperight', -> 
    letter.addClass 'grow'
    xbmcRemote.right()
  hammeredGestureTarget.on 'swipedown', -> 
    letter.addClass 'grow'
    xbmcRemote.down()
  hammeredGestureTarget.on 'swipeleft', -> 
    letter.addClass 'grow'
    xbmcRemote.left()
  gestureTarget.on 'click', -> 
    letter.addClass 'grow'
    xbmcRemote.select()
  hammeredGestureTarget.on 'doubletap', -> 
    letter.addClass 'grow'
    xbmcRemote.back()
  hammeredGestureTarget.on 'hold', -> 
    letter.addClass 'grow'
    xbmcRemote.contextMenu()