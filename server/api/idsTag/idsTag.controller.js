'use strict';

var _ = require('lodash');
var IdsTag = require('./idsTag.model');

// Get list of idsTags
exports.index = function(req, res) {
  IdsTag.find(function (err, idsTags) {
    if(err) { return handleError(res, err); }
    return res.status(200).json(idsTags);
  });
};

// Get a single idsTag
exports.show = function(req, res) {
  IdsTag.findById(req.params.id, function (err, idsTag) {
    if(err) { return handleError(res, err); }
    if(!idsTag) { return res.status(404).send('Not Found'); }
    return res.json(idsTag);
  });
};

// Creates a new idsTag in the DB.
exports.create = function(req, res) {
  IdsTag.create(req.body, function(err, idsTag) {
    if(err) { return handleError(res, err); }
    return res.status(201).json(idsTag);
  });
};

// Updates an existing idsTag in the DB.
exports.update = function(req, res) {
  if(req.body._id) { delete req.body._id; }
  IdsTag.findById(req.params.id, function (err, idsTag) {
    if (err) { return handleError(res, err); }
    if(!idsTag) { return res.status(404).send('Not Found'); }
    var updated = _.merge(idsTag, req.body);
    updated.save(function (err) {
      if (err) { return handleError(res, err); }
      return res.status(200).json(idsTag);
    });
  });
};

// Deletes a idsTag from the DB.
exports.destroy = function(req, res) {
  IdsTag.findById(req.params.id, function (err, idsTag) {
    if(err) { return handleError(res, err); }
    if(!idsTag) { return res.status(404).send('Not Found'); }
    idsTag.remove(function(err) {
      if(err) { return handleError(res, err); }
      return res.status(204).send('No Content');
    });
  });
};

function handleError(res, err) {
  return res.status(500).send(err);
}