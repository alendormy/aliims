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
  it 'access: new: should build a tag object', ->
    a = {id: 'id', upDated: 'upDated', status: 'status', type: 'type', desc: 'desc', datail: 'datail'}
    expect(scope.tags.length).toBe 0
    expect(scope.new('id', 'upDated', 'status', 'type', 'desc', 'datail')).toMatch a
    expect(scope.tags.length).toBe 0
  it 'access: add: should attach a tag object to tags', ->
    tagA = scope.new('id', 'upDated', 'status', 'type', 'desc', 'datail')
    expect(scope.tags.length).toBe 0
    expect(scope.add(tagA)).toBe true
    expect(scope.tags.length).toBe 1
    expect(scope.tags[0]).not.toBe null
    expect(scope.tags[0]).toMatch tagA
    expect(scope.add(scope.new(1, 1, 1, 1, 1, 1))).toBe true
    expect(scope.add(scope.new(2, 2, 2, 2, 2, 2))).toBe true
    expect(scope.tags.length).toBe 3
  it 'access: remove: should detach a tag object from tags', ->
    tag0 = scope.new(0, 0, 0, 0, 0, 0)
    tag1 = scope.new(1, 1, 1, 1, 1, 1)
    tag2 = scope.new(2, 2, 2, 2, 2, 2)
    scope.add(tag0)
    scope.add(tag1)
    scope.add(tag2)
    expect(scope.tags.length).toBe 3
    expect(scope.remove(tag1)).toBe true
    expect(scope.tags.length).toBe 2
    expect(scope.tags[0]).toMatch tag0
    expect(scope.tags[1]).toMatch tag2
  it 'access: save: should change a tag object from tags', ->
    tag0 = scope.new(0, 0, 0, 0, 0, 0)
    tag1 = scope.new(1, 1, 1, 1, 1, 1)
    tag2 = scope.new(2, 2, 2, 2, 2, 2)
    n = scope.new('id', 1, 'status', 1, 'desc', 1)
    scope.add(tag0)
    scope.add(tag1)
    scope.add(tag2)
    expect(scope.tags.length).toBe 3
    expect(scope.save(1, n)).toBe true
    expect(scope.tags.length).toBe 3
    expect(scope.tags[0] == n).not.toBe true    
    expect(scope.tags[1] == n).toBe true
    expect(scope.tags[2] == n).not.toBe true
    expect(scope.tags[1] == tag1).not.toBe true
  it '... have basic access functions.', ->
    expect(1).toBe 1