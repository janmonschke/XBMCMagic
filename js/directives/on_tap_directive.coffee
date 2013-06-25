angular.module('xbmcmagick')
  .directive 'onTap', ->
      return (scope, element, attrs) ->
        return $(element).hammer(
            prevent_default: false,
            drag_vertical: false)
            .bind 'tap', ->
              return scope.$apply attrs['onTap']