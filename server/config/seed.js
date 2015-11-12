/**
 * Populate DB with sample data on server start
 * to disable, edit config/environment/index.js, and set `seedDB: false`
 */

'use strict';

var IdsTag = require('../api/idsTag/idsTag.model');
var Thing = require('../api/thing/thing.model');
var User = require('../api/user/user.model');

Thing.find({}).remove(function() {
  Thing.create({
    name : 'Development Tools',
    info : 'Integration with popular tools such as Bower, Grunt, Karma, Mocha, JSHint, Node Inspector, Livereload, Protractor, Jade, Stylus, Sass, CoffeeScript, and Less.'
  }, {
    name : 'Server and Client integration',
    info : 'Built with a powerful and fun stack: MongoDB, Express, AngularJS, and Node.'
  }, {
    name : 'Smart Build System',
    info : 'Build system ignores `spec` files, allowing you to keep tests alongside code. Automatic injection of scripts and styles into your index.html'
  },  {
    name : 'Modular Structure',
    info : 'Best practice client and server structures allow for more code reusability and maximum scalability'
  },  {
    name : 'Optimized Build',
    info : 'Build process packs up your templates as a single JavaScript payload, minifies your scripts/css/images, and rewrites asset names for caching.'
  },{
    name : 'Deployment Ready',
    info : 'Easily deploy your app to Heroku or Openshift with the heroku and openshift subgenerators'
  });
});

IdsTag.find({}).remove(function() {
  IdsTag.create({
    status: "off",
    type: "aius",
    revision: 1,
    systemLiquid: 2,
    immunoWash: 3,
    triggerA: 4,
    triggerB: 5,
    dsorb: 6,
    apSubstrate: 7,
    desc: "Revision:1",
    upDated: 1447353290308
  }, {
    status: "on",
    type: "disec",
    key: "azert",
    lot: "azertyazer",
    onBoardStabilityValue: 1,
    onBoardStabilityUnit: "h",
    inUseStabilityValue: 2,
    inUseStabilityUnit: "d",
    lagTimeFlag: true,
    lagTimeValue: 3,
    initialVolume: 4,
    idealVolume: 5,
    container: 10,
    expiry: "2015-12-24T23:00:00.000Z",
    desc: " Key:azert Lot:azertyazer Expiry:25-December-2015",
    upDated: 1447353290308,
    apps: [
      1,
      2
    ]
  }, {
    status: "off",
    type: "dised",
    key: "keykk",
    lot: "lotlllllll",
    onBoardStabilityValue: 2,
    onBoardStabilityUnit: "h",
    inUseStabilityValue: 4,
    inUseStabilityUnit: "d",
    initialVolume: 6,
    idealVolume: 6,
    container: 38,
    expiry: "2016-02-24T23:00:00.000Z",
    desc: " Key:keykk Lot:lotlllllll Expiry:25-February-2016",
    upDated: 1447353290308,
    apps: [
      2
    ]
  }, {
    status: "on",
    type: "dss",
    key: "akeyy",
    lot: "alottttttt",
    onBoardStabilityValue: 9,
    onBoardStabilityUnit: "d",
    inUseStabilityValue: 10,
    inUseStabilityUnit: "d",
    lagTimeFlag: true,
    lagTimeValue: 8,
    initialVolume: 6,
    idealVolume: 2,
    container: 40,
    expiry: "2016-05-24T22:00:00.000Z",
    desc: " Key:akeyy Lot:alottttttt Expiry:25-May-2016",
    upDated: "2015-11-12T18:41:02.724Z",
    apps: [
     2
    ]
  }, {
    status: "off",
    type: "mmc",
    mmcId: "AZERTY",
    ymax: 0.07,
    c: 0.08,
    nsb: 0.57,
    d: 100.34,
    desc: " mmcId:AZERTY",
    upDated: "2015-11-12T18:45:06.191Z",
    apps: [
      3
    ]
  }, {
    type: "rht",
    key: "dqvli",
    lot: "alottttttt",
    onBoardStabilityValue: 9,
    onBoardStabilityUnit: "d",
    inUseStabilityValue: 6,
    inUseStabilityUnit: "d",
    lagTimeFlag: true,
    lagTimeValue: 6,
    initialVolume: 9,
    idealVolume: 6,
    container: 46,
    expiry: "2016-03-15T23:00:00.000Z",
    isi: 10.01,
    pid: "qsfjknjq",
    dsorbFlag: true,
    status: "on",
    desc: " Key:dqvli Lot:alottttttt Expiry:16-March-2016",
    upDated: "2015-11-12T18:48:45.398Z",
    apps: [
      10
    ]
  }, {
    status: "off",
    type: "dd",
    key: "qsfer",
    lot: "alottttttt",
    onBoardStabilityValue: 7,
    onBoardStabilityUnit: "h",
    inUseStabilityValue: 5,
    inUseStabilityUnit: "d",
    initialVolume: 6,
    idealVolume: 6,
    container: 28,
    expiry: "2016-07-11T22:00:00.000Z",
    pid: "qsfqrfrea",
    desc: " Key:qsfer Lot:alottttttt Expiry:12-July-2016",
    upDated: "2015-11-12T19:30:06.651Z",
    apps: [
      4
    ]
  }, {
    status: "on",
    type: "rbr",
    key: "qsfer",
    lot: "j",
    onBoardStabilityValue: 6,
    onBoardStabilityUnit: "h",
    inUseStabilityValue: 5,
    inUseStabilityUnit: "d",
    initialVolume: 6,
    idealVolume: 7,
    container: 39,
    expiry: "2015-11-26T23:00:00.000Z",
    rbrType: "1",
    protocolId: "cqscr",
    desc: " Rbr Type:1 Key:qsfer Lot:j Expiry:27-November-2015",
    upDated: "2015-11-12T19:32:36.370Z",
    apps: [
    1
  ]
  }, {
    status: "off",
    type: "rihr",
    key: "dqvli",
    lot: "j",
    onBoardStabilityValue: 5,
    onBoardStabilityUnit: "h",
    inUseStabilityValue: 5,
    inUseStabilityUnit: "d",
    initialVolume: 5,
    idealVolume: 7,
    container: 39,
    expiry: "2016-01-19T23:00:00.000Z",
    pid: "sqfergea",
    dsorbFlag: true,
    rihrType: "i",
    minMean: 0.07,
    maxMean: 0.06,
    maxSd: 0.11,
    mmc: "sdqzfr",
    correctionFactor: 0.09,
    desc: " Rihr Type:i Key:dqvli Lot:j Expiry:20-January-2016",
    upDated: "2015-11-12T19:37:02.307Z",
    apps: [
     3
    ]
  }, {
    status: "on",
    type: "cac",
    preTreatmentFlag: true,
    key: "akeyy",
    lot: "erfezrvg",
    onBoardStabilityValue: 3,
    onBoardStabilityUnit: "h",
    inUseStabilityValue: 5,
    inUseStabilityUnit: "d",
    lagTimeFlag: true,
    lagTimeValue: 7,
    expiry: "2016-02-23T23:00:00.000Z",
    minMean: 0.05,
    maxMean: 0.06,
    maxSd: 0.06,
    mmc: "wdcqve",
    name: "qf",
    k: 0.06,
    desc: " Key:akeyy Lot:erfezrvg Expiry:24-February-2016",
    upDated: "2015-11-12T19:50:07.952Z",
    positions: [
      1,
      4
    ],
    apps: [
      1
    ]
  }, {
    status: "off",
    type: "ccc",
    cccType: "cal",
    onBoardStabilityValue: 3,
    onBoardStabilityUnit: "h",
    inUseStabilityValue: 5,
    inUseStabilityUnit: "d",
    container: 1,
    expiry: "2015-12-23T23:00:00.000Z",
    pid: "qsrgrtg",
    key: "zqefa",
    lot: "qfaffa",
    desc: " Ccc Type:cal Key:zqefa Lot:qfaffa Expiry:24-December-2015",
    upDated: 1447358231246,
    reagents: [
      4
    ],
    analytes: [
      1
    ],
    positions: [],
    apps: [
      1
    ]
  });
});

User.find({}).remove(function() {
  User.create({
    provider: 'local',
    name: 'Test User',
    email: 'test@test.com',
    password: 'test'
  }, {
    provider: 'local',
    role: 'admin',
    name: 'Admin',
    email: 'admin@admin.com',
    password: 'admin'
  }, function() {
      console.log('finished populating users');
    }
  );
});