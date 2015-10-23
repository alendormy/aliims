'use strict'

angular.module 'aliimsApp'
.controller 'TagCtrl', ($scope, Modal) ->
  $scope.tags = []
  $scope.showDebug = true       # false
  $scope.showLoad = true        # true
  $scope.showExtra = true       # true
  $scope.showGroup = true       # true
  $scope.showInputTag = false   # false
  $scope.showView = false       # false
  $scope.showTable = true       # true
  $scope.disableAll = false     # false

  $scope.new = (id, upDated, status, type, desc, datail) ->
    tag = {}
    tag.id = id
    tag.upDated = upDated
    tag.status = status
    tag.type = type
    tag.desc = desc
    tag.datail = datail
    tag
  $scope.clone = (tag) ->
    clone = {}
    clone.id = tag.id
    clone.upDated = tag.upDated
    clone.status = tag.status
    clone.type = tag.type
    clone.desc = tag.desc
    clone.datail = tag.datail
    clone
  $scope.add = () ->
    $scope.showInputTag = true
    $scope.showExtra = false
    $scope.disableAll = true
    true
  $scope.remove = (tag) ->
    index = 0
    index += 1  while $scope.tags[index].id != tag.id
    $scope.tags.splice(index,1)
    true
  $scope.save = (type, inputs) ->
    tag = inputs[0]
    switch type
      when 'ia'
        aius = inputs[1]
        if tag.id == undefined
          tag.desc = "aius: "+"rev"+aius.revision
          tag.datail = aius
          tag.id = $scope.tags.length + 1
          tag.upDated = Date.now()
          $scope.tags.push tag
          # $scope.close('ia')
          $scope.inputAius = null
          $scope.showInputAius = false          
          $scope.close('it')
        else
          alert('edit')

          index = 0
          index += 1  while $scope.tags[index].id != tag.id
          tag.upDated = Date.now()
          $scope.tags[index] = tag
      when 'it'
        if tag.id == undefined
          tag.id = $scope.tags.length + 1
          tag.upDated = Date.now()
          $scope.tags.push tag
        else
          index = 0
          index += 1  while $scope.tags[index].id != tag.id
          tag.upDated = Date.now()
          $scope.tags[index] = tag
        $scope.close('it')
        return true
      else
        false
  $scope.edit = (tag) ->
    $scope.inputTag = $scope.clone(tag)
    $scope.showInputTag = true
    $scope.disableAll = true
    true
  $scope.close = (item) ->
    if item == 'it'
      $scope.inputTag = null
      $scope.showInputTag = false
      $scope.showExtra = true
      $scope.disableAll = false
    if item == 'ia'
      $scope.inputAius = null
      $scope.showInputAius = false
      $scope.inputTag.type = ''
    if item == 'v'
      $scope.viewTag = null
      $scope.showView = false
      $scope.disableAll = false
    if item == 'd'
      $scope.showDebug = false
    if item == 'l'
      $scope.showLoad = false
    if item == 'g'
      $scope.showGroup = false
    if item == 'e'
      $scope.showExtra = false
    true
  $scope.view = (tag) ->
    $scope.viewTag = tag
    $scope.showView = true
    $scope.disableAll = true
    true
  # Debug
  $scope.addOne = () ->
    i = 0
    i = $scope.tags.length + 1
    tag = $scope.new(i, Date.now(), 'offline', '-', i, i)
    $scope.tags.push tag
    true
  $scope.removeLast = () ->
    $scope.remove($scope.tags[$scope.tags.length - 1])
    true
  # Modal
  $scope.delete = Modal.confirm.delete((tag) ->
    $scope.remove(tag)
    true
  )
