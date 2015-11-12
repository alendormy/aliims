'use strict';

var mongoose = require('mongoose'),
  Schema = mongoose.Schema;

var IdsTagSchema = new Schema({
  status: String, 
  type: String, 
  revision: Number, 
  systemLiquid: Number, 
  immunoWash: Number, 
  triggerA: Number, 
  triggerB: Number, 
  dsorb: Number, 
  apSubstrate: Number, 
  key: String, 
  lot: String, 
  onBoardStabilityValue: Number, 
  onBoardStabilityUnit: String, 
  inUseStabilityValue: Number, 
  inUseStabilityUnit: String,
  lagTimeFlag: Boolean, 
  lagTimeValue: Number, 
  initialVolume: Number, 
  idealVolume: Number, 
  container: Number, 
  apps: Array, 
  expiry: Date, 
  mmcId: String, 
  ymax: Number, 
  c: Number, 
  nsb: Number, 
  d: Number, 
  isi: Number, 
  pid: String,
  dsorbFlag: Boolean, 
  rbrType: String,
  protocolId: String, 
  rihrType: String, 
  minMean: Number, 
  maxMean: Number, 
  maxSd: Number, 
  mmc: String,
  correctionFactor: Number, 
  name: String, 
  k: Number, 
  preTreatmentFlag: Boolean, 
  positions: Array, 
  cccType: String, 
  analytes: Array, 
  reagents: Array,
  desc: String, 
  upDated: Date, 
  active: Boolean
});

module.exports = mongoose.model('IdsTag', IdsTagSchema);