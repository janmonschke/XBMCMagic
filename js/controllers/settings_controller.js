// Generated by CoffeeScript 1.6.3
var SettingsController;

SettingsController = function($scope, xbmcSettings) {
  var form;
  $scope.settings = xbmcSettings.settings;
  form = angular.element('#settings-form');
  return form.on('change', xbmcSettings.save);
};
