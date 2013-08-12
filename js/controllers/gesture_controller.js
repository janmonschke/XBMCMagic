// Generated by CoffeeScript 1.6.3
var GestureController;

GestureController = function($scope, xbmcRemote) {
  var gestureTarget, hammeredGestureTarget, letter;
  letter = angular.element('#letter');
  letter[0].addEventListener('webkitAnimationEnd', function() {
    letter.removeClass('glow');
    return console.log('animationend');
  });
  gestureTarget = angular.element('#gesture-target');
  hammeredGestureTarget = gestureTarget.hammer();
  hammeredGestureTarget.on('swipeup', function() {
    letter.removeClass();
    letter.addClass('glow icon-up');
    return xbmcRemote.up();
  });
  hammeredGestureTarget.on('swiperight', function() {
    letter.removeClass();
    letter.addClass('glow icon-right');
    return xbmcRemote.right();
  });
  hammeredGestureTarget.on('swipedown', function() {
    letter.removeClass();
    letter.addClass('glow icon-down');
    return xbmcRemote.down();
  });
  hammeredGestureTarget.on('swipeleft', function() {
    letter.removeClass();
    letter.addClass('glow icon-left');
    return xbmcRemote.left();
  });
  gestureTarget.on('click', function() {
    letter.removeClass();
    letter.addClass('glow icon-up-hand');
    return xbmcRemote.select();
  });
  hammeredGestureTarget.on('doubletap', function() {
    letter.removeClass();
    letter.addClass('glow icon-ccw');
    return xbmcRemote.back();
  });
  return hammeredGestureTarget.on('hold', function() {
    letter.removeClass();
    letter.addClass('glow icon-up-circled2');
    return xbmcRemote.contextMenu();
  });
};
