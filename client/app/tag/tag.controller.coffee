'use strict'

angular.module 'aliimsApp'
.controller 'TagCtrl', ($scope, Modal) ->
  $scope.tags = []
  $scope.showDebug = true       # false
  $scope.showLoad = true        # true
  $scope.showExtra = true       # true
  $scope.showGroup = true       # true
  $scope.showTagInput = false   # false
  $scope.showAiusInput = true  # false
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
    $scope.showTagInput = true
    $scope.showExtra = false
    $scope.disableAll = true
    true
  $scope.remove = (tag) ->
    index = 0
    index += 1  while $scope.tags[index].id != tag.id
    $scope.tags.splice(index,1)
    true
  $scope.save = (tag) ->
    if tag.id == undefined
      tag.id = $scope.tags.length + 1
      tag.upDated = Date.now()
      $scope.tags.push tag
    else
      index = 0
      index += 1  while $scope.tags[index].id != tag.id
      tag.upDated = Date.now()
      $scope.tags[index] = tag
    $scope.close('i')
    true
  $scope.edit = (tag) ->
    $scope.inputTag = $scope.clone(tag)
    $scope.showTagInput = true
    $scope.disableAll = true
    true
  $scope.close = (item) ->
    if item == 'it'
      $scope.inputTag = null
      $scope.showTagInput = false
      $scope.showExtra = true
      $scope.disableAll = false
    if item == 'ia'
      $scope.inputAius = null
      $scope.inputTag.type = ''
      $scope.showAiusInput = false
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

  # # Dialog
  # $scope.items = ['item1', 'item2', 'item3']
  # $scope.animationsEnabled = true
  # $scope.open = (size) ->
  #   modalInstance = $modal.open({
  #     animation: $scope.animationsEnabled,
  #     templateUrl: 'myModalContent.html',
  #     controller: 'ModalInstanceCtrl',
  #     size: size,
  #     resolve: {
  #       items: () ->
  #         $scope.items;
  #     }
  #   })
  #   modalInstance.result.then((selectedItem) ->
  #     $scope.selected = selectedItem
  #   , () ->
  #     $log.info('Modal dismissed at: ' + new Date())
  #   )
  # $scope.toggleAnimation = () ->
  #   $scope.animationsEnabled = !$scope.animationsEnabled;

#   # $scope.selected = "stuff"
# .controller 'ModalInstanceCtrl', ($scope, $modalInstance, items) ->
#   $scope.items = items
#   $scope.selected = {
#     item: $scope.items[0]
#   }
#   $scope.ok = () ->
#     $modalInstance.close($scope.selected.item)
#     true
#   $scope.cancel = () ->
#     $modalInstance.dismiss('cancel')
#     true





# angular.module('ui.bootstrap.demo').controller('ModalDemoCtrl', function ($scope, $uibModal, $log) {
#   $scope.items = ['item1', 'item2', 'item3'];
#   $scope.animationsEnabled = true;
#   $scope.open = function (size) {
#     var modalInstance = $uibModal.open({
#       animation: $scope.animationsEnabled,
#       templateUrl: 'myModalContent.html',
#       controller: 'ModalInstanceCtrl',
#       size: size,
#       resolve: {
#         items: function () {
#           return $scope.items;
#         }
#       }
#     });
#     modalInstance.result.then(function (selectedItem) {
#       $scope.selected = selectedItem;
#     }, function () {
#       $log.info('Modal dismissed at: ' + new Date());
#     });
#   };
#   $scope.toggleAnimation = function () {
#     $scope.animationsEnabled = !$scope.animationsEnabled;
#   };
# });
# // Please note that $modalInstance represents a modal window (instance) dependency.
# // It is not the same as the $uibModal service used above.
# angular.module('ui.bootstrap.demo').controller('ModalInstanceCtrl', function ($scope, $modalInstance, items) {
#   $scope.items = items;
#   $scope.selected = {
#     item: $scope.items[0]
#   };
#   $scope.ok = function () {
#     $modalInstance.close($scope.selected.item);
#   };
#   $scope.cancel = function () {
#     $modalInstance.dismiss('cancel');
#   };
# });