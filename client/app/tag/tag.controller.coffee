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

  # UI testing on ly
  $scope.add1 = () ->
    i = 0
    i = $scope.tags.length + 1
    tag = $scope.new('tag'+i, 'tag'+i, 'tag'+i, 'tag'+i, 'tag'+i, 'tag'+i)
    $scope.add(tag)
    true
  $scope.removeLast = () ->
    i = 0
    i = $scope.tags.length - 1
    tag = $scope.remove(i)
    true
