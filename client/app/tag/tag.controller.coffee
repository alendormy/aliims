'use strict'

angular.module 'aliimsApp'
.controller 'TagCtrl', ($scope, Modal) ->
  $scope.tags = []
  $scope.showDebug = true
  $scope.showLoad = true
  $scope.showExtra = true
  $scope.showGroup = true
  $scope.showInput = false
  $scope.showView = false  
  $scope.showTable = true
  $scope.disableAll = false
  $scope.disableView = false
  $scope.disableEdit = false
  $scope.disableDelete = false
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
    $scope.showInput = true
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
      $scope.tags.push tag
    else
      index = 0
      index += 1  while $scope.tags[index].id != tag.id
      $scope.tags[index] = tag
    $scope.close('i')
    true
  $scope.edit = (tag) ->
    $scope.inputTag = $scope.clone(tag)
    $scope.showInput = true
    $scope.disableAll = true
    true
  $scope.close = (item) ->
    if item == 'i'
      $scope.inputTag = null
      $scope.showInput = false
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

  # Modal
  $scope.delete = Modal.tag.delete((tag) ->
    $scope.remove(tag)
    true
  )



  # $scope.edit = Modal.tag.edit((tag) ->
  #   $scope.remove(tag)
  #   # $scope.save(0, $scope.new('tag', 'tag', 'tag', 'tag', 'tag', 'tag'))
  #   true
  # )

  # Debug
  $scope.addOne = () ->
    i = 0
    i = $scope.tags.length + 1
    tag = $scope.new('tag'+i, 'tag'+i, 'tag'+i, 'tag'+i, 'tag'+i, 'tag'+i)
    $scope.tags.push tag
    true
  $scope.removeLast = () ->
    $scope.remove($scope.tags[$scope.tags.length - 1])
    true

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