'use strict'
angular.module 'aliimsApp'
.controller 'IdsProductCtrl', ($scope, Modal) ->

# TAGS

  $scope.tagView = true
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
        "app_1447076981841",
        "app_1447076981343",
        "app_1447076981834"
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
        "app_1447076981123",
        "app_1447076981345"
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
        "app_1447076981841",
        "app_1447076981845"
      ],
      id: "tag_1447073701712",
      desc: "new",
      upDated: 1447073701713
    }, {
      status: "off",
      type: "mmc",
      apps: [
        "app_1447076981841",
        "app_1447076981845"
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
        "app_1447076981841",
        "app_1447076981845",
        "app_1447076981123"
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
        "app_1447076981845",
        "app_1447076981123"
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
        "app_1447076981841",
        "app_1447076981343",
        "app_1447076981834"
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
        "app_1447076981343",
        "app_1447076981834"
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
      upDated: 1447073921380
    }, {
      status: "off",
      type: "cac",
      key: "a",
      lot: "fhtyhe",
      onBoardStabilityValue: 3,
      onBoardStabilityUnit: "h",
      inUseStabilityValue: 5,
      inUseStabilityUnit: "d",
      lagTimeFlag: true,
      lagTimeValue: 6,
      apps: [
        "app_1447076981841",
        "app_1447076981842"
      ],
      minMean: 0.08,
      maxMean: 0.08,
      maxSd: 0.08,
      mmc: "qsfffrq",
      name: "qskfa",
      k: 0.08,
      preTreatmentFlag: true,
      positions: [
        "position_1447158095432",
        "position_1447158113046"
      ],
      id: "tag_1447158159108",
      desc: "new",
      upDated: 1447158159108
    }, {
      status: "off",
      type: "ccc",
      key: "q",
      lot: "fhtyhe",
      onBoardStabilityValue: 6,
      onBoardStabilityUnit: "d",
      inUseStabilityValue: 8,
      inUseStabilityUnit: "h",
      container: "container_1447076981852",
      apps: [
        "app_1447076981841",
        "app_1447076981844"
      ],
      pid: "skjdfnkq",
      cccType: "con",
      analytes: [
        "analyte_1447158543823",
        "analyte_1447158569246"
      ],
      id: "tag_1447158576339",
      desc: "new",
      upDated: 1447158576339
    }, {
      status: "off",
      type: "ccc",
      key: "q",
      lot: "z",
      onBoardStabilityValue: 5,
      onBoardStabilityUnit: "h",
      inUseStabilityValue: 6,
      inUseStabilityUnit: "h",
      container: "container_1447076981858",
      apps: [
        "app_1447076981842"
      ],
      pid: "kldfn",
      cccType: "cal",
      analytes: [
        "analyte_1447159013169",
        "analyte_1447159025479"
      ],
      reagents: [
        "reagent_1447159036546"
      ],
      id: "tag_1447159044548",
      desc: "new",
      upDated: 1447159044548
    }]
  # $scope.tags = []
  $scope.tag = null

  $scope.tagFormStatusOptions = [{id: "off", name: "Offline"}, {id: "on", name: "Online"}]
  $scope.tagFormTypeOptions = [
    {id: "aius", name: "Ancilliaries In Use Stability"},
    {id: "disec", name: "D Ise Cleaner"},
    {id: "dised", name: "D Ise Diluent"},
    {id: "dss", name: "D Saline Solution"},
    {id: "mmc", name: "M Master Curve"},
    {id: "rht", name: "R Haemostasis Trigger"},
    {id: "dd", name: "D Diluent"},
    {id: "rbr", name: "R Biochemistry Reagent"},
    {id: "rihr", name: "R Immunology Haemostasis Reagent"},
    {id: "cac", name: "CA Cartridge"},
    {id: "ccc", name: "C Calibrator Control"}]
  $scope.tagFormStabilityUnitOptions = [{id: "h", name: "Hour(s)"}, {id: "d", name: "Day(s)"}]
  $scope.tagFormRbrTypeOptions  = [{id: "1", name: "R1"}, {id: "2", name: "R2"}, {id: "3", name: "R3"}]
  $scope.tagFormRihrTypeOptions  = [{id: "i", name: "Immunology"}, {id: "h", name: "Haemostasis"}]
  $scope.tagFormCccTypeOptions  = [{id: "cal", name: "Calibrator"}, {id: "con", name: "Control"}]

  $scope.selectTag = (tag) ->
    $scope.tag = angular.copy(tag)
    $scope.tagFormView = true
    $scope.tagPreView = true
    true

  $scope.saveTag = () ->
    # mock mongo id
    if $scope.tag.id
      # alert("edit")
      i = 0
      i++ while $scope.tag.id != $scope.tags[i].id
      $scope.tag.desc = "edit"
      $scope.tags[i] = $scope.tag
    else
      # alert("new")
      $scope.tag.id = "tag_"+Date.now()
      $scope.tag.desc = "new"
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

# APPS

  $scope.appView = false
  $scope.appTableView = false
  $scope.appFormView = false
  $scope.appPreView = false

  $scope.apps  =[
    {
      status: "on",
      name: "app 1",
      id: "app_1447076981841",
      desc: "new",
      upDated: 1447076981841
    }, {
      status: "on",
      name: "app 2",
      id: "app_1447076981842",
      desc: "new",
      upDated: 1447076981842
    }, {
      status: "off",
      name: "app 3",
      id: "app_1447076981843",
      desc: "new",
      upDated: 1447076981843
    }, {
      status: "on",
      name: "app 4",
      id: "app_1447076981844",
      desc: "new",
      upDated: 1447076981844}]
  # $scope.apps = []
  $scope.app = null

  $scope.appFormStatusOptions = [{id: "off", name: "Offline"}, {id: "on", name: "Online"}]

  $scope.selectApp = (app) ->
    $scope.app = angular.copy(app)
    $scope.appFormView = true
    $scope.appPreView = true
    true

  $scope.saveApp = () ->
    # mock mongo id
    if $scope.app.id
      # alert("edit")
      i = 0
      i++ while $scope.app.id != $scope.apps[i].id
      $scope.app.desc = "edit"
      $scope.apps[i] = $scope.app
    else
      # alert("new")
      $scope.app.id = "app_"+Date.now()
      $scope.app.desc = "new"
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
    $scope.clearApp()
    true

# CONTAINERS

  $scope.containerView = false
  $scope.containerTableView = false
  $scope.containerFormView = false
  $scope.containerPreView = false

  $scope.containers  = [
    {
      status: "on",
      code: 0,
      name: "PT_11_4.5mL",
      filter: [
        "ccc"
      ],
      id: "container_1447076981845",
      desc: "new",
      upDated: 1447076981845
    }, {
      status: "on",
      code: 1,
      name: "PT_13_6mL",
      filter: [
        "ccc"
      ],
      id: "container_1447076981846",
      desc: "new",
      upDated: 1447076981846
    }, {
      status: "on",
      code: 2,
      name: "ST_13_5mL",
      filter: [
        "ccc"
      ],
      id: "container_1447076981847",
      desc: "new",
      upDated: 1447076981847
    }, {
      status: "on",
      code: 3,
      name: "PT_16_10mL",
      filter: [
        "ccc"
      ],
      id: "container_1447076981848",
      desc: "new",
      upDated: 1447076981848
    }, {
      status: "on",
      code: 4,
      name: "Cupule 500",
      filter: [
        "ccc"
      ],
      id: "container_1447076981849",
      desc: "new",
      upDated: 1447076981849
    }, {
      status: "on",
      code: 5,
      name: "Cupule 2mL",
      filter: [
        "ccc"
      ],
      id: "container_1447076981850",
      desc: "new",
      upDated: 1447076981850
    }, {
      status: "on",
      code: 6,
      name: "PT_15_8.5mL",
      filter: [
        "ccc"
      ],
      id: "container_1447076981851",
      desc: "new",
      upDated: 1447076981851
    }, {
      status: "on",
      code: 7,
      name: "<7>",
      filter: [
        "ccc"
      ],
      id: "container_1447076981852",
      desc: "new",
      upDated: 1447076981852
    }, {
      status: "off",
      code: 8,
      name: "<8>",
      filter: [
        "ccc"
      ],
      id: "container_1447076981853",
      desc: "new",
      upDated: 1447076981853
    }, {
      status: "on",
      code: 9,
      name: "<9>",
      filter: [
        "ccc"
      ],
      id: "container_1447076981854",
      desc: "new",
      upDated: 1447076981854
    }, {
      status: "on",
      code: 10,
      name: "1mL Verre Réactif",
      filter: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr"
      ],
      id: "container_1447076981855",
      desc: "new",
      upDated: 1447076981855
    }, {
      status: "on",
      code: 11,
      name: "10mL Verre Réactif",
      filter: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr"
      ],
      id: "container_1447076981856",
      desc: "new",
      upDated: 1447076981856
    }, {
      status: "on",
      code: 17,
      name: "10mL CAL B",
      filter: [
        "ccc"
      ],
      id: "container_1447076981857",
      desc: "new",
      upDated: 1447076981857
    }, {
      status: "on",
      code: 19,
      name: "<19>",
      filter: [
        "ccc"
      ],
      id: "container_1447076981858",
      desc: "new",
      upDated: 1447076981858
    }, {
      status: "off",
      code: 20,
      name: "<20>",
      filter: [
        "ccc"
      ],
      id: "container_1447076981850",
      desc: "new",
      upDated: 1447076981850
    }, {
      status: "on",
      code: 21,
      name: "<21>",
      filter: [
        "ccc"
      ],
      id: "container_1447076981860",
      desc: "new",
      upDated: 1447076981860
    }, {
      status: "off",
      code: 22,
      name: "<22>",
      filter: [
        "ccc"
      ],
      id: "container_1447076981861",
      desc: "new",
      upDated: 1447076981861
    }, {
      status: "on",
      code: 23,
      name: "<23>",
      filter: [
        "ccc"
      ],
      id: "container_1447076981862",
      desc: "new",
      upDated: 1447076981862
    }, {
      status: "off",
      code: 24,
      name: "<24>",
      filter: [
        "ccc"
      ],
      id: "container_1447076981863",
      desc: "new",
      upDated: 1447076981863
    }, {
      status: "on",
      code: 25,
      name: "<25>",
      filter: [
        "ccc"
      ],
      id: "container_1447076981864",
      desc: "new",
      upDated: 1447076981864
    }, {
      status: "on",
      code: 26,
      name: "CASBCHNANOP reduced dead volume",
      filter: [
        "cac"
      ],
      id: "container_1447076981865",
      desc: "new",
      upDated: 1447076981865
    }, {
      status: "on",
      code: 27,
      name: "CASBCHNANOP",
      filter: [
        "cac"
      ],
      id: "container_1447076981866",
      desc: "new",
      upDated: 1447076981866
    }, {
      status: "on",
      code: 28,
      name: "CASBCH1X",
      filter: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr",
        "cac"
      ],
      id: "container_1447076981867",
      desc: "new",
      upDated: 1447076981867
    }, {
      status: "on",
      code: 29,
      name: "CASBCH2X",
      filter: [
        "cac"
      ],
      id: "container_1447076981868",
      desc: "new",
      upDated: 1447076981868
    }, {
      status: "on",
      code: 30,
      name: "CASBCH3X",
      filter: [
        "cac"
      ],
      id: "container_1447076981869",
      desc: "new",
      upDated: 1447076981869
    }, {
      status: "on",
      code: 34,
      name: "CAS_REDUC_BCH1X",
      filter: [
        "cac"
      ],
      id: "container_1447080741970",
      desc: "new",
      upDated: 1447080741970
    }, {
      status: "on",
      code: 35,
      name: "CAS_REDUC_BCH2X",
      filter: [
        "cac"
      ],
      id: "container_1447080741971",
      desc: "new",
      upDated: 1447080741971
    }, {
      status: "on",
      code: 36,
      name: "CAS_REDUC_BCH3X",
      filter: [
        "cac"
      ],
      id: "container_1447080741972",
      desc: "new",
      upDated: 1447080741972
    }, {
      status: "on",
      code: 37,
      name: "BCH_UNIT_20ML",
      filter: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr"
      ],
      id: "container_1447080741973",
      desc: "new",
      upDated: 1447080741973
    }, {
      status: "on",
      code: 38,
      name: "BCH_UNIT_REDUC_20ML",
      filter: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr"
      ],
      id: "container_1447080741974",
      desc: "new",
      upDated: 1447080741974
    }, {
      status: "on",
      code: 39,
      name: "BCH_UNIT_50ML",
      filter: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr"
      ],
      id: "container_1447080741975",
      desc: "new",
      upDated: 1447080741975
    }, {
      status: "on",
      code: 40,
      name: "BCH_UNIT_REDUC_20ML",
      filter: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr"
      ],
      id: "container_1447080741976",
      desc: "new",
      upDated: 1447080741976
    }, {
      status: "on",
      code: 42,
      name: "CAL/CTL Immuno",
      filter: [
        "ccc"
      ],
      id: "container_1447080741977",
      desc: "new",
      upDated: 1447080741977
    }, {
      status: "on",
      code: 43,
      name: "CASBCH1X reduced dead volume",
      filter: [
        "cac"
      ],
      id: "container_1447080741978",
      desc: "new",
      upDated: 1447080741978
    }, {
      status: "on",
      code: 44,
      name: "CASBCH2X reduced dead volume",
      filter: [
        "cac"
      ],
      id: "container_1447080741979",
      desc: "new",
      upDated: 1447080741979
    }, {
      status: "on",
      code: 45,
      name: "CASBCH3X reduced dead volume",
      filter: [
        "cac"
      ],
      id: "container_1447080741980",
      desc: "new",
      upDated: 1447080741980
    }, {
      status: "on",
      code: 46,
      name: "IDS_UNIT_13ML",
      filter: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr"
      ],
      id: "container_1447080741981",
      desc: "new",
      upDated: 1447080741981}]
  # $scope.containers = []
  $scope.container = null

  $scope.containerFormStatusOptions = [{id: "off", name: "Offline"}, {id: "on", name: "Online"}]
  $scope.containerFormFilterOptions = [
    # {id: "aius", name: "Ancilliaries In Use Stability"},
    {id: "disec", name: "D Ise Cleaner"},
    {id: "dised", name: "D Ise Diluent"},
    {id: "dss", name: "D Saline Solution"},
    # {id: "mmc", name: "M Master Curve"},
    {id: "rht", name: "R Haemostasis Trigger"},
    {id: "dd", name: "D Diluent"},
    {id: "rbr", name: "R Biochemistry Reagent"},
    {id: "rihr", name: "R Biochemistry Immunology Haemostasis Reagent"},
    {id: "cac", name: "CA Cartridge"},
    {id: "ccc", name: "C Calibrator Control"}]
    # tag.type == 'disec' || tag.type == 'dised' || tag.type == 'dss' || tag.type == 'rht' || tag.type == 'dd' || tag.type == 'rbr' || tag.type == 'rihr'

  $scope.selectContainer = (container) ->
    $scope.container = angular.copy(container)
    $scope.containerFormView = true
    $scope.containerPreView = true
    true

  $scope.saveContainer = () ->
    # mock mongo id
    if $scope.container.id
      # alert("edit")
      i = 0
      i++ while $scope.container.id != $scope.containers[i].id
      $scope.container.desc = "edit"
      $scope.containers[i] = $scope.container
    else
      # alert("new")
      $scope.container.id = "container_"+Date.now()
      $scope.container.desc = "new"
      $scope.containers.push $scope.container
    $scope.container.upDated = Date.now()
    $scope.clearContainer()
    true

  $scope.clearContainer = () ->
    $scope.container = null
    $scope.containerForm = null
    $scope.containerFormView = false
    $scope.containerPreView = false
    true

  $scope.deleteContainer = Modal.confirm.delete (container) ->
    i = 0
    i += 1  while $scope.containers[i].id != container.id
    $scope.containers.splice(i,1)
    $scope.clearContainer()
    true

# POSITIONS

  $scope.positionView = false
  $scope.positionTableView = false
  $scope.positionFormView = false
  $scope.positionPreView = false

  # $scope.positions  = [
  #   {id: "1", name: "Position 1"},
  #   {id: "2", name: "Position 2"},
  #   {id: "3", name: "Position 3"},
  #   {id: "4", name: "Position 4"},
  #   {id: "5", name: "Position 5"},
  #   {id: "6", name: "Position 6"},
  #   {id: "7", name: "Position 7"}]
  $scope.positions = []
  $scope.position = null

  $scope.positionFormStatusOptions = [{id: "off", name: "Offline"}, {id: "on", name: "Online"}]
  $scope.positionFormTypeOptions = [
    {id: "e", name: "Empty"},
    {id: "d", name: "Diluent"},
    {id: "r", name: "Reagent (immuno)"},
    {id: "p", name: "Pretreatment (immuno)"}]

  $scope.selectPosition = (position) ->
    $scope.position = angular.copy(position)
    $scope.positionFormView = true
    $scope.positionPreView = true
    true

  $scope.savePosition = () ->
    # mock mongo id
    $scope.position.name = 'pos:'+$scope.position.pos+', pid:'+$scope.position.pid+', containter:'+$scope.position.container+', type:'+$scope.position.type+', in:'+$scope.position.initialVolume+', id:'+$scope.position.idealVolume
    if $scope.position.id
      # alert("edit")
      i = 0
      i++ while $scope.position.id != $scope.positions[i].id
      $scope.position.desc = "edit"
      $scope.positions[i] = $scope.position
    else
      # alert("new")
      $scope.position.id = "position_"+Date.now()
      $scope.position.desc = "new"
      $scope.positions.push $scope.position
    $scope.position.upDated = Date.now()
    $scope.clearPosition()
    true

  $scope.clearPosition = () ->
    $scope.position = null
    $scope.positionForm = null
    $scope.positionFormView = false
    $scope.positionPreView = false
    true

  $scope.deletePosition = Modal.confirm.delete (position) ->
    i = 0
    i += 1  while $scope.positions[i].id != position.id
    $scope.positions.splice(i,1)
    $scope.clearPosition()
    true

# ANALYTES

  $scope.analyteView = false
  $scope.analyteTableView = false
  $scope.analyteFormView = false
  $scope.analytePreView = false

  # $scope.analytes  = [
  #   {id: "1", name: "Analyte 1"},
  #   {id: "2", name: "Analyte 2"},
  #   {id: "3", name: "Analyte 3"},
  #   {id: "4", name: "Analyte 4"},
  #   {id: "5", name: "Analyte 5"},
  #   {id: "6", name: "Analyte 6"},
  #   {id: "7", name: "Analyte 7"}]
  $scope.analytes = []
  $scope.analyte = null

  $scope.analyteFormStatusOptions = [{id: "off", name: "Offline"}, {id: "on", name: "Online"}]

  $scope.selectAnalyte = (analyte) ->
    $scope.analyte = angular.copy(analyte)
    $scope.analyteFormView = true
    $scope.analytePreView = true
    true

  $scope.saveAnalyte = () ->
    # mock mongo id
    $scope.analyte.name = 'analyteId:'+$scope.analyte.analyteId+', target:'+$scope.analyte.target+', tolerance:'+$scope.analyte.tolerance+', reference:'+$scope.analyte.reference
    if $scope.analyte.id
      # alert("edit")
      i = 0
      i++ while $scope.analyte.id != $scope.analytes[i].id
      $scope.analyte.desc = "edit"
      $scope.analytes[i] = $scope.analyte
    else
      # alert("new")
      $scope.analyte.id = "analyte_"+Date.now()
      $scope.analyte.desc = "new"
      $scope.analytes.push $scope.analyte
    $scope.analyte.upDated = Date.now()
    $scope.clearAnalyte()
    true

  $scope.clearAnalyte = () ->
    $scope.analyte = null
    $scope.analyteForm = null
    $scope.analyteFormView = false
    $scope.analytePreView = false
    true

  $scope.deleteAnalyte = Modal.confirm.delete (analyte) ->
    i = 0
    i += 1  while $scope.analytes[i].id != analyte.id
    $scope.analytes.splice(i,1)
    $scope.clearAnalyte()
    true

# REAGENTS

  $scope.reagentView = false
  $scope.reagentTableView = false
  $scope.reagentFormView = false
  $scope.reagentPreView = false

  # $scope.reagents  = [
  #   {id: "1", name: "Reagent 1"},
  #   {id: "2", name: "Reagent 2"},
  #   {id: "3", name: "Reagent 3"},
  #   {id: "4", name: "Reagent 4"},
  #   {id: "5", name: "Reagent 5"},
  #   {id: "6", name: "Reagent 6"},
  #   {id: "7", name: "Reagent 7"}]
  $scope.reagents = []
  $scope.reagent = null

  $scope.reagentFormStatusOptions = [{id: "off", name: "Offline"}, {id: "on", name: "Online"}]

  $scope.selectReagent = (reagent) ->
    $scope.reagent = angular.copy(reagent)
    $scope.reagentFormView = true
    $scope.reagentPreView = true
    true

  $scope.saveReagent = () ->
    # mock mongo id
    $scope.reagent.name = 'reagentId:'+$scope.reagent.reagentId
    if $scope.reagent.id
      # alert("edit")
      i = 0
      i++ while $scope.reagent.id != $scope.reagents[i].id
      $scope.reagent.desc = "edit"
      $scope.reagents[i] = $scope.reagent
    else
      # alert("new")
      $scope.reagent.id = "reagent_"+Date.now()
      $scope.reagent.desc = "new"
      $scope.reagents.push $scope.reagent
    $scope.reagent.upDated = Date.now()
    $scope.clearReagent()
    true

  $scope.clearReagent = () ->
    $scope.reagent = null
    $scope.reagentForm = null
    $scope.reagentFormView = false
    $scope.reagentPreView = false
    true

  $scope.deleteReagent = Modal.confirm.delete (reagent) ->
    i = 0
    i += 1  while $scope.reagents[i].id != reagent.id
    $scope.reagents.splice(i,1)
    $scope.clearReagent()
    true

# CARRIED OVER
  $scope.today = () ->
    $scope.dt = new Date()

  $scope.today()

  $scope.clear = () ->
    $scope.dt = null

  $scope.open = ($event) ->
    $event.preventDefault()
    $event.stopPropagation()
    $scope.opened = true

  $scope.formats = ["dd-MMMM-yyyy", "yyyy/MM/dd", "dd.MM.yyyy", "shortDate"]

  $scope.format = $scope.formats[0]
