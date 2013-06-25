SettingsController = ($scope, xbmcSettings) ->
  $scope.settings = xbmcSettings.settings

  # save the settings when the form changes
  form = angular.element '#settings-form'
  form.on 'change', xbmcSettings.save