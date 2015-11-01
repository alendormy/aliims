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
            $scope.tags.push tag
            $scope.close('aius')
          when 'disec'
            tag.desc = "new"
            tag.datail = inputs[1]
            $scope.tags.push tag
            $scope.close('disec')
          when 'dised'
            tag.desc = "new"
            tag.datail = inputs[1]
            $scope.tags.push tag
            $scope.close('dised')
          when 'dss'
            tag.desc = "new"
            tag.datail = inputs[1]
            $scope.tags.push tag
            $scope.close('dss')
          when '-'
            # tag.desc as it is
            # tag.datail as it is
          else
            return false
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
            $scope.tags[i] = tag
            $scope.close('aius')
          when 'disec'
            tag.desc = "edit"
            tag.datail = inputs[1]
            $scope.tags[i] = tag
            $scope.close('disec')
          when 'dised'
            tag.desc = "edit"
            tag.datail = inputs[1]
            $scope.tags[i] = tag
            $scope.close('dised')
          when 'dss'
            tag.desc = "edit"
            tag.datail = inputs[1]
            $scope.tags[i] = tag
            $scope.close('dss')
          when '-'
            # tag.desc as it is
            # tag.datail as it is
          else
            return false
    true
  $scope.edit = (tag) ->
    clone = $scope.clone(tag)
    $scope.inputTag = clone
    $scope.showInputTag = true
    switch tag.type
      when 'aius'
        $scope.aius = clone.datail
        return true
      when 'disec'
        $scope.disec = clone.datail
        return true
      when 'dised'
        $scope.dised = clone.datail
        return true
      when 'dss'
        $scope.dss = clone.datail
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
    if item == 'disec'
      $scope.disec = null
      $scope.disecForm = null
      $scope.inputTag = null
      $scope.showInputTag = false
      $scope.showExtra = true
      $scope.disableAll = false
    if item == 'dised'
      $scope.dised = null
      $scope.disedForm = null
      $scope.inputTag = null
      $scope.showInputTag = false
      $scope.showExtra = true
      $scope.disableAll = false
    if item == 'dss'
      $scope.dss = null
      $scope.dssForm = null
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
      when 'disec'
        datail = {}
        datail.key = i
        datail.lot = i
        datail.onBoardStabilityValue = i
        datail.onBoardStabilityUnit = 'hours'
        datail.inUseStabilityValue = i
        datail.inUseStabilityUnit = 'days'
        datail.lagTimeFlag = true
        datail.lagTimeValue = i
        datail.initialVolume = i
        datail.idealVolume = i
        datail.container = 'container2'
        datail.app = ['app1', 'app3']
        datail.exipry = new Date("November 30, 2015 12:12:12");
        tag = $scope.new(i, Date.now(), 'offline', 'disec', i, datail)
      when 'dised'
        datail = {}
        datail.key = i
        datail.lot = i
        datail.onBoardStabilityValue = i
        datail.onBoardStabilityUnit = 'hours'
        datail.inUseStabilityValue = i
        datail.inUseStabilityUnit = 'days'
        datail.lagTimeFlag = true
        datail.lagTimeValue = i
        datail.initialVolume = i
        datail.idealVolume = i
        datail.container = 'container2'
        datail.app = ['app1', 'app3']
        datail.exipry = new Date("November 30, 2015 12:12:12");
        tag = $scope.new(i, Date.now(), 'offline', 'disec', i, datail)
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
  # Datepicker
  $scope.today = () ->
    $scope.dt = new Date()
  $scope.today()
  $scope.clear = () ->
    $scope.dt = null
  $scope.open = ($event) ->
    $event.preventDefault()
    $event.stopPropagation()
    $scope.opened = true
  $scope.formats = ['dd-MMMM-yyyy', 'yyyy/MM/dd', 'dd.MM.yyyy', 'shortDate']
  $scope.format = $scope.formats[0]
