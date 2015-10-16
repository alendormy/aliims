'use strict'

angular.module 'aliimsApp'
.controller 'TagCtrl', ($scope) ->

  $scope.tags = []

  $scope.new = (id, upDated, status, type, desc, datail) ->
    tag = {}
    tag.id = id
    tag.upDated = upDated
    tag.status = status
    tag.type = type
    tag.desc = desc
    tag.datail = datail
    tag

  $scope.add = (tag) ->
    $scope.tags.push tag
    true

  $scope.remove = (index) ->
    $scope.tags.splice(index,1)
    true

  $scope.edit = (index, tag) ->
  	$scope.tags[index] = tag
  	true

  # $scope.message = 'Hello Tag'
