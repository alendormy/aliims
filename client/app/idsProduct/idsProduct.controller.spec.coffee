'use strict'

describe 'Controller: IdsProductCtrl', ->

  # load the controller's module
  beforeEach module 'aliimsApp'
  IdsProductCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    IdsProductCtrl = $controller 'IdsProductCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
