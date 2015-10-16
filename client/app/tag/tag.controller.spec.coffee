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

  # it 'should ...', ->
  #   expect(scope.message).toBe 'Hello Tag'

  it 'access: new: should build a tag object', ->
    a = {id: 'id', upDated: 'upDated', status: 'status', type: 'type', desc: 'desc', datail: 'datail'}
    # console.log('a:-> ')
    # console.log(a)
    expect(scope.tags.length).toBe 0
    expect(scope.new('id', 'upDated', 'status', 'type', 'desc', 'datail')).toMatch a
    expect(scope.tags.length).toBe 0
  it 'access: add: should attach a tag object to tags', ->
    tagA = scope.new('id', 'upDated', 'status', 'type', 'desc', 'datail')
    # console.log('tagA:> ')
    # console.log(tagA)
    expect(scope.tags.length).toBe 0
    expect(scope.add(tagA)).toBe true
    expect(scope.tags.length).toBe 1
    expect(scope.tags[0]).not.toBe null
    expect(scope.tags[0]).toMatch tagA
    # console.log('tags[0]:> ')
    # console.log(scope.tags[0])
    expect(scope.add(scope.new(1, 1, 1, 1, 1, 1))).toBe true
    expect(scope.add(scope.new(2, 2, 2, 2, 2, 2))).toBe true
    expect(scope.tags.length).toBe 3
    # console.log('tags:>')
    # console.log(scope.tags)
  it 'access: remove: should detach a tag object from tags', ->
    tag0 = scope.new(0, 0, 0, 0, 0, 0)
    tag1 = scope.new(1, 1, 1, 1, 1, 1)
    tag2 = scope.new(2, 2, 2, 2, 2, 2)
    scope.add(tag0)
    scope.add(tag1)
    scope.add(tag2)
    expect(scope.tags.length).toBe 3
    expect(scope.remove(1)).toBe true
    expect(scope.tags.length).toBe 2
    expect(scope.tags[0]).toMatch tag0
    expect(scope.tags[1]).toMatch tag2
    # console.log('tags:>')
    # console.log(scope.tags)
  it 'access: edit: should change a tag object from tags', ->
    tag0 = scope.new(0, 0, 0, 0, 0, 0)
    tag1 = scope.new(1, 1, 1, 1, 1, 1)
    tag2 = scope.new(2, 2, 2, 2, 2, 2)
    n = scope.new('id', 1, 'status', 1, 'desc', 1)
    scope.add(tag0)
    scope.add(tag1)
    scope.add(tag2)
    expect(scope.tags.length).toBe 3
    expect(scope.edit(1, n)).toBe true
    expect(scope.tags.length).toBe 3
    expect(scope.tags[0] == n).not.toBe true    
    expect(scope.tags[1] == n).toBe true
    expect(scope.tags[2] == n).not.toBe true
    expect(scope.tags[1] == tag1).not.toBe true
    # console.log('tags:>')
    # console.log(scope.tags)
  it '... have basic access functions.', ->
    expect(1).toBe 1

  it 'dialog: open new: should attach to dialogs a dialog containing a form containing a new tag object', ->
    expect(1).toBe 1
  it 'dialog: open existing: should attach to dialogs a dialog containing a form containing a particular tag object in tags', ->
    expect(1).toBe 1
  it 'dialog: exit new: ...', ->
    expect(1).toBe 1
  it 'dialog: exit existing: ...', ->
    expect(1).toBe 1
  it 'dialog: cancel new: should detach from dialogs the dialog containing the form containing the new tag object', ->
    expect(1).toBe 1
  it 'dialog: cancel existing: should detach from dialogs the dialog containing the form containing the particular tag object in tags', ->
    expect(1).toBe 1
  it 'dialog: save new: should add the new tag object to tags then detach from dialogs the dialog containing the form containing the new tag object', ->
    expect(1).toBe 1
  it 'dialog: save existing: should edit the particular tag object in tags then detach from dialogs the dialog containing the form containing the particular tag object in tags', ->
    expect(1).toBe 1
  it '... have basic dialog functions.', ->
    expect(1).toBe 1

  it '... have basic validation functions.', ->
    expect(1).toBe 1

  it '... have basic grid functions.', ->
    expect(1).toBe 1

  # it 'should ...', ->
  #   expect(scope.message).toBe 'Hello Tag'
    