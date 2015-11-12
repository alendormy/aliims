/**
 * Broadcast updates to client when the model changes
 */

'use strict';

var IdsTag = require('./idsTag.model');

exports.register = function(socket) {
  IdsTag.schema.post('save', function (doc) {
    onSave(socket, doc);
  });
  IdsTag.schema.post('remove', function (doc) {
    onRemove(socket, doc);
  });
}

function onSave(socket, doc, cb) {
  socket.emit('idsTag:save', doc);
}

function onRemove(socket, doc, cb) {
  socket.emit('idsTag:remove', doc);
}