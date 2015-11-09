'use strict'
angular.module 'aliimsApp'
.controller 'IdsProductCtrl', ($scope, Modal) ->

  $scope.tags = []
  $scope.tag = null
  $scope.tagFormStabilityUnitOptions = [{id: 'h', name: 'Hour(s)'}, {id: 'd', name: 'Day(s)'}]
  $scope.tagFormStatusOptions = [{id: 'off', name: 'Offline'}, {id: 'on', name: 'Online'}]
  $scope.tagFormTypeOptions = [
    {id: 'aius', name: 'Ancilliaries In Use Stability'},
    {id: 'disec', name: 'D Ise Cleaner'},
    {id: 'dised', name: 'D Ise Diluent'},
    {id: 'dss', name: 'D Saline Solution'},
    {id: 'mmc', name: 'M Master Curve'},
    {id: 'rht', name: 'R Haemostasis Trigger'},
    {id: 'dd', name: 'D Diluent'},
    {id: 'rbr', name: 'R Biochemistry Reagent'},
    {id: 'rihr', name: 'R Biochemistry Immunology Haemostasis Reagent'},
    {id: 'cac', name: 'CA Cartridge'},
    {id: 'ccc', name: 'C Calibrator Control'}]
  $scope.tagFormRbrTypeOptions  = [{id: '1', name: 'R1'}, {id: '2', name: 'R2'}, {id: '3', name: 'R3'}]
  $scope.tagFormRihrTypeOptions  = [{id: 'i', name: 'Immunology'}, {id: 'h', name: 'Haemostasis'}]

  $scope.containers  = [
    {id: '0', filter: ['ccc'], name: 'PT_11_4.5mL'},
    {id: '1', filter: ['ccc'], name: 'PT_13_6mL'},
    {id: '2', filter: ['ccc'], name: 'ST_13_5mL'},
    {id: '3', filter: ['ccc'], name: 'PT_16_10mL'},
    {id: '4', filter: ['ccc'], name: 'Cupule 500'},
    {id: '5', filter: ['ccc'], name: 'Cupule 2mL'},
    {id: '6', filter: ['ccc'], name: 'PT_15_8.5mL'},
    {id: '7', filter: ['ccc'], name: '<7>'},
    {id: '8', filter: ['ccc'], name: '<8>'},
    {id: '9', filter: ['ccc'], name: '<9>'},
    {id: '19', filter: ['ccc'], name: '<19>'},
    {id: '20', filter: ['ccc'], name: '<20>'},
    {id: '21', filter: ['ccc'], name: '<21>'},
    {id: '22', filter: ['ccc'], name: '<22>'},
    {id: '23', filter: ['ccc'], name: '<23>'},
    {id: '24', filter: ['ccc'], name: '<24>'},
    {id: '25', filter: ['ccc'], name: '<25>'},
    {id: '17', filter: ['ccc'], name: '10mL CAL B'},
    {id: '42', filter: ['ccc'], name: 'CAL/CTL Immuno'},
    {id: '26', filter: ['cac'], name: 'CASBCHNANOP reduced dead volume'},
    {id: '27', filter: ['cac'], name: 'CASBCHNANOP'},
    {id: '29', filter: ['cac'], name: 'CASBCH2X'},
    {id: '30', filter: ['cac'], name: 'CASBCH3X'},
    {id: '34', filter: ['cac'], name: 'CAS_REDUC_BCH1X'},
    {id: '35', filter: ['cac'], name: 'CAS_REDUC_BCH2X'},
    {id: '36', filter: ['cac'], name: 'CAS_REDUC_BCH3X'},
    {id: '43', filter: ['cac'], name: 'CASBCH1X reduced dead volume'},
    {id: '44', filter: ['cac'], name: 'CASBCH2X reduced dead volume'},
    {id: '45', filter: ['cac'], name: 'CASBCH3X reduced dead volume'},
    {id: '10', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr'], name: '1mL Verre Réactif'},
    {id: '11', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr'], name: '10mL Verre Réactif'},
    {id: '28', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr', 'cac'], name: 'CASBCH1X'},
    {id: '37', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr'], name: 'BCH_UNIT_20ML'},
    {id: '38', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr'], name: 'BCH_UNIT_REDUC_20ML'},
    {id: '39', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr'], name: 'BCH_UNIT_50ML'},
    {id: '40', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr'], name: 'BCH_UNIT_REDUC_20ML'},
    {id: '46', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr'], name: 'IDS_UNIT_13ML'}]
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

  $scope.positions  = [
    {id: '1', name: 'Position 1'},
    {id: '2', name: 'Position 2'},
    {id: '3', name: 'Position 3'},
    {id: '4', name: 'Position 4'},
    {id: '5', name: 'Position 5'},
    {id: '6', name: 'Position 6'},
    {id: '7', name: 'Position 7'}]
  # $scope.positions = []
  $scope.position = {}

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
