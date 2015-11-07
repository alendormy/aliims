'use strict'

angular.module 'aliimsApp'
.config ($stateProvider) ->
  $stateProvider.state 'idsProduct',
    url: '/idsProduct'
    templateUrl: 'app/idsProduct/idsProduct.html'
    controller: 'IdsProductCtrl'
