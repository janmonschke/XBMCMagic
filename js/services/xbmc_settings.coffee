xbmcmagick = angular.module 'xbmcmagick'

xbmcmagick.factory 'xbmcSettings', ($http, $rootScope) ->
  # this is where the settings are saved to in localStorage
  localStorageKey = 'xbmcMagickSettings'

  # the default settings
  settings =
    address: ''
    port: '8080'
    auth: ''
    password: ''

  # load settings from locaStorage
  loadedSettings = JSON.parse localStorage.getItem localStorageKey
  loadedSettings or= {}

  # add default values to the settings
  angular.extend settings, loadedSettings

  # write the settings back to localStorage
  save = -> localStorage.setItem localStorageKey, JSON.stringify settings

  return {
    settings: settings
    save: save
  }