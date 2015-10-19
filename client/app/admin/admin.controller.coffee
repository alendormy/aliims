'use strict'

angular.module 'aliimsApp'
.controller 'AdminCtrl', ($scope, $http, Auth, User, Modal) ->

  $http.get '/api/users'
  .success (users) ->
    $scope.users = users

  # $scope.delete = (user) ->
  #   User.remove id: user._id
  #   _.remove $scope.users, user

  $scope.delete = Modal.confirm.delete((user) ->
    User.remove({ id: user._id })
    angular.forEach($scope.users, (u, i) ->
      $scope.users.splice(i, 1) if (u==user)
    )
  )
