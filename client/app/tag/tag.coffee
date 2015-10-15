'use strict'

angular.module 'aliimsApp'
.config ($stateProvider) ->
  $stateProvider.state 'tag',
    url: '/tag'
    templateUrl: 'app/tag/tag.html'
    controller: 'TagCtrl'
