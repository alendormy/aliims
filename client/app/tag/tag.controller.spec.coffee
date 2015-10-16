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

  it '... have basic form functions.', ->
    expect(1).toBe 1

#https://www.google.fr/search?client=ubuntu&channel=fs&q=angular+ui+modal&ie=utf-8&oe=utf-8&gfe_rd=cr&ei=7SchVomhIY6x8wenppSIAw
#https://www.google.fr/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0CCEQFjAAahUKEwjj0pPctsfIAhUF0hoKHTdRDYA&url=https%3A%2F%2Fangular-ui.github.io%2Fbootstrap%2F&usg=AFQjCNGDCw2gdtcbU376aNoaHv7rtS6hcA&sig2=_gbxJhUR8IcAWibeIzSOsQ
#https://www.google.fr/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&cad=rja&uact=8&ved=0CCgQFjABahUKEwjj0pPctsfIAhUF0hoKHTdRDYA&url=http%3A%2F%2Fjsfiddle.net%2Falexsuch%2FRLQhh%2F&usg=AFQjCNHFXtGbz9ogI8zeYPSrw8PhG5HXqg&sig2=vIRbjGt-6Q4EMyJ8InjnVA
#https://www.google.fr/url?sa=t&rct=j&q=&esrc=s&source=web&cd=5&cad=rja&uact=8&ved=0CD8QFjAEahUKEwjj0pPctsfIAhUF0hoKHTdRDYA&url=https%3A%2F%2Fcodepen.io%2Fm-e-conroy%2Fpen%2FALsdF&usg=AFQjCNEEbHb_IOjxWZhcL3_hHqsa_JaIag&sig2=jqWTzMVN5McDOzaZHvikgghttps://www.google.fr/url?sa=t&rct=j&q=&esrc=s&source=web&cd=5&cad=rja&uact=8&ved=0CD8QFjAEahUKEwjj0pPctsfIAhUF0hoKHTdRDYA&url=https%3A%2F%2Fcodepen.io%2Fm-e-conroy%2Fpen%2FALsdF&usg=AFQjCNEEbHb_IOjxWZhcL3_hHqsa_JaIag&sig2=jqWTzMVN5McDOzaZHvikgg

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
    