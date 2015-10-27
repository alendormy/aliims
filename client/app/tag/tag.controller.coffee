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
  $scope.save = (inputs) ->
    tag = inputs[0]
    switch tag.id
      when undefined
        tag.id = $scope.tags.length + 1
        tag.upDated = Date.now()
        # tag.status as it is
        # tag.type as it is
        switch tag.type
          when 'aius'
            tag.desc = "new"
            tag.datail = inputs[1]
          when '-'
            # tag.desc as it is
            # tag.datail as it is
          else
            return false
        $scope.tags.push tag
        $scope.close('aius')
      else
        i = 0
        i += 1  while $scope.tags[i].id != tag.id
        # tag.id as it is
        tag.upDated = Date.now()
        # tag.status as it is
        # tag.type as it is
        switch tag.type
          when 'aius'
            tag.desc = "edit"
            tag.datail = inputs[1]
          when '-'
            # tag.desc as it is
            # tag.datail as it is
          else
            return false
        $scope.tags[i] = tag
        $scope.close('aius')
    true
  $scope.edit = (tag) ->
    clone = $scope.clone(tag)
    $scope.inputTag = clone
    $scope.showInputTag = true
    switch tag.type
      when 'aius'
        $scope.aius = clone.datail
        $scope.showInputAius = true
        return true
      when '-'
        return true
      else
        false
    $scope.disableAll = true
    true
  $scope.close = (item) ->
    if item == 'it'
      $scope.inputTag = null
      $scope.showInputTag = false
      $scope.showExtra = true
      $scope.disableAll = false
    if item == 'aius'
      $scope.aius = null
      $scope.aiusForm = null
      $scope.inputTag = null
      $scope.showInputTag = false
      $scope.showExtra = true
      $scope.disableAll = false
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
  $scope.addOne = (type) ->
    i = 0
    i = $scope.tags.length + 1
    switch type
      when 'aius'
        datail = {}
        datail.revision = i
        datail.systemLiquid = i
        datail.immunologyWash = i
        datail.triggerA = i
        datail.triggerB = i
        datail.dsorb = i
        datail.apSubstrate = i
        tag = $scope.new(i, Date.now(), 'offline', 'aius', i, datail)
      when '-'
        tag = $scope.new(i, Date.now(), 'offline', '-', i, i)
      else
        return false
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
