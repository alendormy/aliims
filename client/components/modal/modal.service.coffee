'use strict'
angular.module 'aliimsApp'
.factory 'Modal', ($rootScope, $modal) ->
  ###
  Opens a modal
  @param  {Object} scope      - an object to be merged with modal's scope
  @param  {String} modalClass - (optional) class(es) to be applied to the modal
  @return {Object}            - the instance $modal.open() returns
  ###
  openModal = (scope, modalClass) ->
    modalScope = $rootScope.$new()
    scope = scope or {}
    modalClass = modalClass or 'modal-default'
    angular.extend modalScope, scope
    $modal.open
      templateUrl: 'components/modal/modal.html'
      windowClass: modalClass
      scope: modalScope
  # Public API here
  tag:
    ###
    Create a function to open a tag delete confirmation modal (ex. ng-click='myModalFn(id, arg1, arg2...)')
    @param  {Function} del - callback, ran when delete is confirmed
    @return {Function}     - the function to open the modal (ex. myModalFn)
    ###
    delete: (del) ->
      del = del or angular.noop
      ###
      Open a delete confirmation modal
      @param  {String} id   - id or info to show on modal
      @param  {All}           - any additional args are passed staight to del callback
      ###
      ->
        args = Array::slice.call arguments
        id = args.shift()
        deleteModal = undefined
        deleteModal = openModal(
          modal:
            dismissable: true
            title: 'Confirm Tag Delete'
            html: '<p>Are you sure you want to delete Tag <strong>' + id + '</strong> ?</p>'
            buttons: [
              {
                classes: 'btn-danger'
                text: 'Delete'
                click: (e) ->
                  deleteModal.close e
                  return
              }
              {
                classes: 'btn-default'
                text: 'Cancel'
                click: (e) ->
                  deleteModal.dismiss e
                  return
              }
            ]
        , 'modal-danger')
        deleteModal.result.then (event) ->
          del.apply event, args
          return
        return
    ###
    Create a function to open a tag edit confirmation modal (ex. ng-click='myModalFn(id, arg1, arg2...)')
    @param  {Function} edi - callback, ran when edit is confirmed
    @return {Function}     - the function to open the modal (ex. myModalFn)
    ###
    edit: (edi) ->
      edi = edi or angular.noop
      ###
      Open a edit confirmation modal
      @param  {String} id   - id or info to show on modal
      @param  {All}           - any additional args are passed staight to edi callback
      ###
      ->
        args = Array::slice.call arguments
        id = args.shift()
        editModal = undefined
        editModal = openModal(
          modal:
            dismissable: true
            title: 'Confirm Tag Edit'
            html: '<p>Are you sure you want to edit Tag <strong>' + id + '</strong> ?</p>'
            buttons: [
              {
                classes: 'btn-warning'
                text: 'Save'
                click: (e) ->
                  editModal.close e
                  return
              }
              {
                classes: 'btn-default'
                text: 'Cancel'
                click: (e) ->
                  editModal.dismiss e
                  return
              }
            ]
        , 'modal-warning')
        editModal.result.then (event) ->
          edi.apply event, args
          return
        return

  # Confirmation modals 
  confirm:
    ###
    Create a function to open a delete confirmation modal (ex. ng-click='myModalFn(name, arg1, arg2...)')
    @param  {Function} del - callback, ran when delete is confirmed
    @return {Function}     - the function to open the modal (ex. myModalFn)
    ###
    delete: (del) ->
      del = del or angular.noop
      ###
      Open a delete confirmation modal
      @param  {String} name   - name or info to show on modal
      @param  {All}           - any additional args are passed staight to del callback
      ###
      ->
        args = Array::slice.call arguments
        name = args.shift()
        deleteModal = undefined
        deleteModal = openModal(
          modal:
            dismissable: true
            title: 'Confirm Delete'
            html: '<p>Are you sure you want to delete <strong>' + name + '</strong> ?</p>'
            buttons: [
              {
                classes: 'btn-danger'
                text: 'Delete'
                click: (e) ->
                  deleteModal.close e
                  return
              }
              {
                classes: 'btn-default'
                text: 'Cancel'
                click: (e) ->
                  deleteModal.dismiss e
                  return
              }
            ]
        , 'modal-danger')
        deleteModal.result.then (event) ->
          del.apply event, args
          return
        return
