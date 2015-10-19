'use strict';

describe('Main View', function() {
  var page;

  beforeEach(function() {
    browser.get('/');
    page = require('./main.po');
  });

  it('should include jumbotron with correct data', function() {
    expect(page.h1El.getText()).toBe('\'Allo, \'Allo!');
    expect(page.imgEl.getAttribute('src')).toMatch(/assets\/images\/yeoman.png$/);
    expect(page.imgEl.getAttribute('alt')).toBe('I\'m Yeoman');

  // it 'dialog: open new: should attach to dialogs a dialog containing a form containing a new tag object', ->
  //   expect(1).toBe 1
  // it 'dialog: open existing: should attach to dialogs a dialog containing a form containing a particular tag object in tags', ->
  //   expect(1).toBe 1
  // it 'dialog: exit new: ...', ->
  //   expect(1).toBe 1
  // it 'dialog: exit existing: ...', ->
  //   expect(1).toBe 1
  // it 'dialog: cancel new: should detach from dialogs the dialog containing the form containing the new tag object', ->
  //   expect(1).toBe 1
  // it 'dialog: cancel existing: should detach from dialogs the dialog containing the form containing the particular tag object in tags', ->
  //   expect(1).toBe 1
  // it 'dialog: save new: should add the new tag object to tags then detach from dialogs the dialog containing the form containing the new tag object', ->
  //   expect(1).toBe 1
  // it 'dialog: save existing: should edit the particular tag object in tags then detach from dialogs the dialog containing the form containing the particular tag object in tags', ->
  //   expect(1).toBe 1
  // it '... have basic dialog functions.', ->
  //   expect(1).toBe 1

  // it '... have basic validation functions.', ->
  //   expect(1).toBe 1

  // it '... have basic grid functions.', ->
  //   expect(1).toBe 1

  });
});
