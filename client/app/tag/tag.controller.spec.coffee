'use strict'

describe 'Controller: TagCtrl', ->

  # load the controller's module
  beforeEach module 'aliimsApp'
  TagCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    TagCtrl = $controller 'TagCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
    expect(scope.message).toBe 'Hello'

  it ' add should attach a tag to tags in scope', ->
    expect(1).toEqual 1
    expect(scope.tags.length).toBe 0
    expect(scope.add('id', 'upDated', 'status', 'type', 'desc', 'datail')).toBe true
    expect(scope.tags.length).toBe 1
    expect(scope.tags[0]).not.toBe null
    expect(scope.tags[0].id).toBe 'id'
    expect(scope.tags[0].datail).toBe 'datail'
    # console.log(scope.tags[0])

  it ' remove should detach a tag from tags in scope', ->
    expect(1).toEqual 1
    expect(scope.tags.length).toBe 0
    # expect(scope.add(0, 0, 0, 0, 0, 0)).toBe true
    # expect(scope.add(1, 1, 1, 1, 1, 1)).toBe true
    # expect(scope.add(2, 2, 2, 2, 2, 2)).toBe true
    # expect(scope.tags.length).toBe 3
    # expect(scope.remove(1)).toBe true
    # expect(scope.tags.length).toBe 2
    # expect(scope.tags[0].id).toBe 0
    # expect(scope.tags[1].id).toBe 2
    # console.log(scope.tags)

  # it ' edit should change a tag from tags in scope', ->
    # expect(1).toEqual 1