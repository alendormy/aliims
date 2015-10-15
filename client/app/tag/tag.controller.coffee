'use strict'

angular.module 'aliimsApp'
.controller 'TagCtrl', ($scope) ->
  $scope.message = 'Hello'
  $scope.tags = []
  $scope.add = (id, upDated, status, type, desc, datail) ->
    tag = {}
    tag.id = id
    tag.upDated = upDated
    tag.status = status
    tag.type = type
    tag.desc = desc
    tag.datail = datail
    $scope.tags.push tag
    true
