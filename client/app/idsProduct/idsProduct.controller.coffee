'use strict'
angular.module 'aliimsApp'
.controller 'IdsProductCtrl', ($scope, Modal) ->
  $scope.tagFormStatusOptions = [{id: 'off', name: 'Offline'}, {id: 'on', name: 'Online'}]
  $scope.tagFormTypeOptions = [{id: 'aius', name: 'Ancilliaries In Use Stability'}, {id: 'disec', name: 'D Ise Cleaner'}, {id: 'dised', name: 'D Ise Diluent'}, {id: 'dss', name: 'D Saline Solution'}, {id: 'mmc', name: 'M Master Curve'}, {id: 'rht', name: 'R Haemostasis Trigger'}, {id: 'dd', name: 'D Diluent'}, {id: 'rbr', name: 'R Biochemistry Reagent'}, {id: 'rihr', name: 'R Biochemistry Immunology Haemostasis Reagent'}, {id: 'cac', name: 'CA Cartridge'}, {id: 'ccc', name: 'C Calibrator Control'}]
  $scope.tagTableView = false
  $scope.tagFormView = false
  $scope.tagPreView = false
  $scope.tags = []
  $scope.tag = {}
  $scope.name = null
  $scope.size = null
  $scope.saveTag = () ->
    $scope.tag.upDated = Date.now()
    $scope.tags.push $scope.tag
    $scope.tag = {}
    $scope.tagFormView = false
    true
  $scope.deleteTag = Modal.confirm.delete(
  	(tag) ->
      index = 0
      index += 1  while $scope.tags[index].id != tag.id
      $scope.tags.splice(index,1)
      true
  )
