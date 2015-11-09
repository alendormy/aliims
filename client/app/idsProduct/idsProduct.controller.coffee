'use strict'
angular.module 'aliimsApp'
.controller 'IdsProductCtrl', ($scope, Modal) ->

  # TAG STUFF
  $scope.tagTableView = false
  $scope.tagFormView = false
  $scope.tagPreView = false

  $scope.tags = [
    {
      status: "off",
      type: "aius",
      revision: 7,
      systemLiquid: 7,
      immunoWash: 7,
      triggerA: 9,
      triggerB: 8,
      dsorb: 9,
      apSubstrate: 8,
      id: "tag_1447073591908",
      desc: "new",
      upDated: 1447073591908
    }, {
      status: "off",
      type: "disec",
      key: "qfrefeag",
      lot: "z",
      onBoardStabilityValue: 8,
      onBoardStabilityUnit: "h",
      inUseStabilityValue: 8,
      inUseStabilityUnit: "d",
      lagTimeFlag: true,
      lagTimeValue: 7,
      initialVolume: 11,
      idealVolume: 9,
      container: 1,
      apps: [
        4,
        5,
        6
      ],
      id: "tag_1447073625257",
      desc: "new",
      upDated: 1447073625257
    }, {
      status: "off",
      type: "dised",
      key: "qsfnlernil",
      lot: "qsrfaerf",
      onBoardStabilityValue: 10,
      onBoardStabilityUnit: "h",
      inUseStabilityValue: 7,
      inUseStabilityUnit: "d",
      initialVolume: 7,
      idealVolume: 9,
      container: "1",
      apps: [
        5,
        7
      ],
      id: "tag_1447073660982",
      desc: "new",
      upDated: 1447073660982
    }, {
      status: "on",
      type: "dss",
      key: "qseffé",
      lot: "z",
      onBoardStabilityValue: 7,
      onBoardStabilityUnit: "h",
      inUseStabilityValue: 7,
      inUseStabilityUnit: "d",
      initialVolume: 8,
      idealVolume: 10,
      container: "6",
      apps: [
        4,
        6
      ],
      id: "tag_1447073701712",
      desc: "new",
      upDated: 1447073701713
    }, {
      status: "off",
      type: "mmc",
      apps: [
        3,
        6
      ],
      mmcId: "L123",
      ymax: 0.46,
      c: 0.05,
      nsb: 0.19,
      d: 0.11,
      id: "tag_1447073726918",
      desc: "new",
      upDated: 1447073726918
    }, {
      status: "on",
      type: "rht",
      key: "xxxx",
      lot: "qsrfaerf",
      onBoardStabilityValue: 9,
      onBoardStabilityUnit: "d",
      inUseStabilityValue: 8,
      inUseStabilityUnit: "d",
      initialVolume: 10,
      idealVolume: 10,
      lagTimeFlag: true,
      lagTimeValue: 10,
      container: "9",
      apps: [
        4,
        6,
        7
      ],
      pid: "skjdfnkq",
      dsorbFlag: true,
      id: "tag_1447073782990",
      desc: "new",
      upDated: 1447073782990
    }, {
      status: "on",
      type: "dd",
      key: "qseffé",
      lot: "azeff('g",
      onBoardStabilityValue: 8,
      onBoardStabilityUnit: "h",
      inUseStabilityValue: 5,
      inUseStabilityUnit: "d",
      initialVolume: 7,
      idealVolume: 7,
      container: "4",
      apps: [
        4,
        6
      ],
      pid: "sqfeqf",
      id: "tag_1447073820512",
      desc: "new",
      upDated: 1447073820512
    }, {
      status: "off",
      type: "rbr",
      key: "qfarfr",
      lot: "fhtyhe",
      onBoardStabilityValue: 6,
      onBoardStabilityUnit: "d",
      inUseStabilityValue: 6,
      inUseStabilityUnit: "h",
      initialVolume: 7,
      idealVolume: 11,
      container: "2",
      apps: [
        1,
        3,
        4
      ],
      rbrType: "2",
      protocolId: "qskfnir",
      id: "tag_1447073863660",
      desc: "new",
      upDated: 1447073863660
    }, {
      status: "off",
      type: "rihr",
      key: "sqfaer",
      lot: "z",
      onBoardStabilityValue: 9,
      onBoardStabilityUnit: "d",
      inUseStabilityValue: 7,
      inUseStabilityUnit: "d",
      initialVolume: 8,
      idealVolume: 10,
      container: "1",
      apps: [
        1,
        2
      ],
      pid: "sqfeqf",
      dsorbFlag: true,
      rihrType: "i",
      minMean: 0.07,
      maxMean: 0.1,
      maxSd: 0.07,
      mmc: "qsfffrq",
      correctionFactor: 0.12,
      id: "tag_1447073921380",
      desc: "new",
      upDated: 1447073921380}]
  # $scope.tags = []
  $scope.tag = null

  $scope.tagFormStatusOptions = [{id: 'off', name: 'Offline'}, {id: 'on', name: 'Online'}]
  $scope.tagFormTypeOptions = [
    {id: 'aius', name: 'Ancilliaries In Use Stability'},
    {id: 'disec', name: 'D Ise Cleaner'},
    {id: 'dised', name: 'D Ise Diluent'},
    {id: 'dss', name: 'D Saline Solution'},
    {id: 'mmc', name: 'M Master Curve'},
    {id: 'rht', name: 'R Haemostasis Trigger'},
    {id: 'dd', name: 'D Diluent'},
    {id: 'rbr', name: 'R Biochemistry Reagent'},
    {id: 'rihr', name: 'R Biochemistry Immunology Haemostasis Reagent'},
    {id: 'cac', name: 'CA Cartridge'},
    {id: 'ccc', name: 'C Calibrator Control'}]
  $scope.tagFormStabilityUnitOptions = [{id: 'h', name: 'Hour(s)'}, {id: 'd', name: 'Day(s)'}]
  $scope.tagFormRbrTypeOptions  = [{id: '1', name: 'R1'}, {id: '2', name: 'R2'}, {id: '3', name: 'R3'}]
  $scope.tagFormRihrTypeOptions  = [{id: 'i', name: 'Immunology'}, {id: 'h', name: 'Haemostasis'}]

  $scope.selectTag = (tag) ->
    $scope.tag = angular.copy(tag)
    $scope.tagFormView = true
    $scope.tagPreView = true
    true

  $scope.saveTag = () ->
    # mock mongo id
    if $scope.tag.id
      # alert('edit')
      i = 0
      i++ while $scope.tag.id != $scope.tags[i].id
      $scope.tag.desc = 'edit'
      $scope.tags[i] = $scope.tag
    else
      # alert('new')
      $scope.tag.id = 'tag_'+Date.now()
      $scope.tag.desc = 'new'
      $scope.tags.push $scope.tag
    $scope.tag.upDated = Date.now()
    $scope.clearTag()
    true

  $scope.clearTag = () ->
    $scope.tag = null
    $scope.tagForm = null
    $scope.tagFormView = false
    $scope.tagPreView = false
    true

  $scope.deleteTag = Modal.confirm.delete (tag) ->
    i = 0
    i += 1  while $scope.tags[i].id != tag.id
    $scope.tags.splice(i,1)
    $scope.clearTag()
    true

  # APP STUFF
  $scope.appTableView = false
  $scope.appFormView = false
  $scope.appPreView = false

  $scope.apps  =[
    {
      status: "off",
      name: "app1",
      id: "app_1447076981841",
      desc: "new",
      upDated: 1447076981841
    }, {
      status: "on",
      name: "app2",
      id: "app_1447076991666",
      desc: "new",
      upDated: 1447076991666
    }, {
      status: "off",
      name: "app3",
      id: "app_1447076999407",
      desc: "new",
      upDated: 1447076999407
    }, {
      status: "on",
      name: "app4",
      id: "app_1447077007352",
      desc: "new",
      upDated: 1447077007352}]
  # $scope.apps = []
  $scope.app = null

  $scope.appFormStatusOptions = [{id: 'off', name: 'Offline'}, {id: 'on', name: 'Online'}]

  $scope.selectApp = (app) ->
    $scope.app = angular.copy(app)
    $scope.appFormView = true
    $scope.appPreView = true
    true

  $scope.saveApp = () ->
    # mock mongo id
    if $scope.app.id
      # alert('edit')
      i = 0
      i++ while $scope.app.id != $scope.apps[i].id
      $scope.app.desc = 'edit'
      $scope.apps[i] = $scope.app
    else
      # alert('new')
      $scope.app.id = 'app_'+Date.now()
      $scope.app.desc = 'new'
      $scope.apps.push $scope.app
    $scope.app.upDated = Date.now()
    $scope.clearApp()
    true

  $scope.clearApp = () ->
    $scope.app = null
    $scope.appForm = null
    $scope.appFormView = false
    $scope.appPreView = false
    true

  $scope.deleteApp = Modal.confirm.delete (app) ->
    i = 0
    i += 1  while $scope.apps[i].id != app.id
    $scope.apps.splice(i,1)
    $scope.clearTag()
    true

  # CONTAINER STUFF
  $scope.containers  = [
    {id: '0', filter: ['ccc'], name: 'PT_11_4.5mL'},
    {id: '1', filter: ['ccc'], name: 'PT_13_6mL'},
    {id: '2', filter: ['ccc'], name: 'ST_13_5mL'},
    {id: '3', filter: ['ccc'], name: 'PT_16_10mL'},
    {id: '4', filter: ['ccc'], name: 'Cupule 500'},
    {id: '5', filter: ['ccc'], name: 'Cupule 2mL'},
    {id: '6', filter: ['ccc'], name: 'PT_15_8.5mL'},
    {id: '7', filter: ['ccc'], name: '<7>'},
    {id: '8', filter: ['ccc'], name: '<8>'},
    {id: '9', filter: ['ccc'], name: '<9>'},
    {id: '19', filter: ['ccc'], name: '<19>'},
    {id: '20', filter: ['ccc'], name: '<20>'},
    {id: '21', filter: ['ccc'], name: '<21>'},
    {id: '22', filter: ['ccc'], name: '<22>'},
    {id: '23', filter: ['ccc'], name: '<23>'},
    {id: '24', filter: ['ccc'], name: '<24>'},
    {id: '25', filter: ['ccc'], name: '<25>'},
    {id: '17', filter: ['ccc'], name: '10mL CAL B'},
    {id: '42', filter: ['ccc'], name: 'CAL/CTL Immuno'},
    {id: '26', filter: ['cac'], name: 'CASBCHNANOP reduced dead volume'},
    {id: '27', filter: ['cac'], name: 'CASBCHNANOP'},
    {id: '29', filter: ['cac'], name: 'CASBCH2X'},
    {id: '30', filter: ['cac'], name: 'CASBCH3X'},
    {id: '34', filter: ['cac'], name: 'CAS_REDUC_BCH1X'},
    {id: '35', filter: ['cac'], name: 'CAS_REDUC_BCH2X'},
    {id: '36', filter: ['cac'], name: 'CAS_REDUC_BCH3X'},
    {id: '43', filter: ['cac'], name: 'CASBCH1X reduced dead volume'},
    {id: '44', filter: ['cac'], name: 'CASBCH2X reduced dead volume'},
    {id: '45', filter: ['cac'], name: 'CASBCH3X reduced dead volume'},
    {id: '10', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr'], name: '1mL Verre Réactif'},
    {id: '11', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr'], name: '10mL Verre Réactif'},
    {id: '28', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr', 'cac'], name: 'CASBCH1X'},
    {id: '37', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr'], name: 'BCH_UNIT_20ML'},
    {id: '38', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr'], name: 'BCH_UNIT_REDUC_20ML'},
    {id: '39', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr'], name: 'BCH_UNIT_50ML'},
    {id: '40', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr'], name: 'BCH_UNIT_REDUC_20ML'},
    {id: '46', filter: ['disec', 'dised', 'dss', 'rht', 'dd', 'rbr', 'rihr'], name: 'IDS_UNIT_13ML'}]
  # $scope.containers = []
  $scope.container = {}
  
  $scope.positions  = [
    {id: '1', name: 'Position 1'},
    {id: '2', name: 'Position 2'},
    {id: '3', name: 'Position 3'},
    {id: '4', name: 'Position 4'},
    {id: '5', name: 'Position 5'},
    {id: '6', name: 'Position 6'},
    {id: '7', name: 'Position 7'}]
  # $scope.positions = []
  $scope.position = {}

  # COPIED OVER
  $scope.today = () ->
    $scope.dt = new Date()

  $scope.today()

  $scope.clear = () ->
    $scope.dt = null

  $scope.open = ($event) ->
    $event.preventDefault()
    $event.stopPropagation()
    $scope.opened = true

  $scope.formats = ['dd-MMMM-yyyy', 'yyyy/MM/dd', 'dd.MM.yyyy', 'shortDate']

  $scope.format = $scope.formats[0]
