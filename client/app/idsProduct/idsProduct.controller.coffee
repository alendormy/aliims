'use strict'
angular.module 'aliimsApp'
.controller 'IdsProductCtrl', ($scope, Modal) ->

  $scope.tags = []
  $scope.tag = null
  $scope.tagFormStabilityUnitOptions = [{id: 'h', name: 'Hour(s)'}, {id: 'd', name: 'Day(s)'}]
  $scope.tagFormStatusOptions = [{id: 'off', name: 'Offline'}, {id: 'on', name: 'Online'}]
  $scope.tagFormTypeOptions = [{id: 'aius', name: 'Ancilliaries In Use Stability'}, {id: 'disec', name: 'D Ise Cleaner'}, {id: 'dised', name: 'D Ise Diluent'}, {id: 'dss', name: 'D Saline Solution'}, {id: 'mmc', name: 'M Master Curve'}, {id: 'rht', name: 'R Haemostasis Trigger'}, {id: 'dd', name: 'D Diluent'}, {id: 'rbr', name: 'R Biochemistry Reagent'}, {id: 'rihr', name: 'R Biochemistry Immunology Haemostasis Reagent'}, {id: 'cac', name: 'CA Cartridge'}, {id: 'ccc', name: 'C Calibrator Control'}]
  $scope.tagFormRbrTypeOptions  = [{id: '1', name: 'R1'}, {id: '2', name: 'R2'}, {id: '3', name: 'R3'}]
  $scope.tagFormRihrTypeOptions  = [{id: 'i', name: 'Immunology'}, {id: 'h', name: 'Haemostasis'}]

  $scope.containers  = [
    {id: '10', name: '1mL Verre Réactif'},
    {id: '11', name: '10mL Verre Réactif'},
    {id: '28', name: 'CASBCH1X'},
    {id: '37', name: 'BCH_UNIT_20ML'},
    {id: '38', name: 'BCH_UNIT_REDUC_20ML'},
    {id: '39', name: 'BCH_UNIT_50ML'},
    {id: '40', name: 'BCH_UNIT_REDUC_20ML'}]
  # $scope.containers = []
  $scope.container = {}
  
  $scope.apps  = [
    {id: '1', name: 'App 1'},
    {id: '2', name: 'App 2'},
    {id: '3', name: 'App 3'},
    {id: '4', name: 'App 4'},
    {id: '5', name: 'App 5'},
    {id: '6', name: 'App 6'},
    {id: '7', name: 'App 7'}]
  # $scope.apps = []
  $scope.app = {}

  $scope.tagTableView = false
  $scope.tagFormView = false
  $scope.tagPreView = false

  $scope.selectTag = (tag) ->
    $scope.tag = angular.copy(tag)
    true

  $scope.saveTag = () ->
    # mock mongo id
    if $scope.tag.id
      alert('edit')
      i = 0
      i++ while $scope.tag.id != $scope.tags[i].id
      $scope.tag.desc = 'edit'
      $scope.tags[i] = $scope.tag
    else
      alert('new')
      $scope.tag.id = 'xXx'+Date.now()+'xXx'  
      $scope.tag.desc = 'new'
      $scope.tags.push $scope.tag
    $scope.tag.upDated = Date.now()
    $scope.clearTag()
    true

  $scope.clearTag = () ->
    $scope.tag = null
    $scope.tagForm = null
    true

  $scope.deleteTag = Modal.confirm.delete (tag) ->
    i = 0
    i += 1  while $scope.tags[i].id != tag.id
    $scope.tags.splice(i,1)
    $scope.clearTag()
    true


  # copied over...
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
