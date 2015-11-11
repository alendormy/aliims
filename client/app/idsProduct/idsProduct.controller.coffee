'use strict'
angular.module 'aliimsApp'
.controller 'IdsProductCtrl', ($scope, $filter, Modal) ->

# COMMONS

  $scope.formats = ["dd-MMMM-yyyy", "yyyy/MM/dd", "dd.MM.yyyy", "shortDate"]

  $scope.format = $scope.formats[0]

  $scope.formStatusOptions = [{val: "off", desc: "Offline"}, {val: "on", desc: "Online"}]


  $scope.today = () ->
    $scope.dt = new Date()

  $scope.clear = () ->
    $scope.dt = null

  $scope.open = ($event) ->
    $event.preventDefault()
    $event.stopPropagation()
    $scope.opened = true

  $scope.today()

# TAGS (back loaded)

  $scope.tagView = true
  $scope.tagTableView = false
  $scope.tagFormView = false
  $scope.tagPreView = false

  # $scope.tags = [
  #   {
  #     status: "on",
  #     type: "aius",
  #     revision: 7,
  #     systemLiquid: 7,
  #     immunoWash: 7,
  #     triggerA: 9,
  #     triggerB: 8,
  #     dsorb: 9,
  #     apSubstrate: 8,
  #     id: "tag_1447073591908",
  #     desc: "new",
  #     upDated: 1447073591908
  #   }, {
  #     status: "on",
  #     type: "disec",
  #     key: "qfrefeag",
  #     lot: "z",
  #     onBoardStabilityValue: 8,
  #     onBoardStabilityUnit: "h",
  #     inUseStabilityValue: 8,
  #     inUseStabilityUnit: "d",
  #     lagTimeFlag: true,
  #     lagTimeValue: 7,
  #     initialVolume: 11,
  #     idealVolume: 9,
  #     container: 1,
  #     apps: [
  #       "app_1447076981841",
  #       "app_1447076981343",
  #       "app_1447076981834"
  #     ],
  #     id: "tag_1447073625257",
  #     desc: "new",
  #     upDated: 1447073625257
  #   }, {
  #     status: "on",
  #     type: "dised",
  #     key: "qsfnlernil",
  #     lot: "qsrfaerf",
  #     onBoardStabilityValue: 10,
  #     onBoardStabilityUnit: "h",
  #     inUseStabilityValue: 7,
  #     inUseStabilityUnit: "d",
  #     initialVolume: 7,
  #     idealVolume: 9,
  #     container: "1",
  #     apps: [
  #       "app_1447076981123",
  #       "app_1447076981345"
  #     ],
  #     id: "tag_1447073660982",
  #     desc: "new",
  #     upDated: 1447073660982
  #   }, {
  #     status: "on",
  #     type: "dss",
  #     key: "qseffé",
  #     lot: "z",
  #     onBoardStabilityValue: 7,
  #     onBoardStabilityUnit: "h",
  #     inUseStabilityValue: 7,
  #     inUseStabilityUnit: "d",
  #     initialVolume: 8,
  #     idealVolume: 10,
  #     container: "6",
  #     apps: [
  #       "app_1447076981841",
  #       "app_1447076981845"
  #     ],
  #     id: "tag_1447073701712",
  #     desc: "new",
  #     upDated: 1447073701713
  #   }, {
  #     status: "on",
  #     type: "mmc",
  #     apps: [
  #       "app_1447076981841",
  #       "app_1447076981845"
  #     ],
  #     mmcId: "L123",
  #     ymax: 0.46,
  #     c: 0.05,
  #     nsb: 0.19,
  #     d: 0.11,
  #     id: "tag_1447073726918",
  #     desc: "new",
  #     upDated: 1447073726918
  #   }, {
  #     status: "on",
  #     type: "rht",
  #     key: "xxxx",
  #     lot: "qsrfaerf",
  #     onBoardStabilityValue: 9,
  #     onBoardStabilityUnit: "d",
  #     inUseStabilityValue: 8,
  #     inUseStabilityUnit: "d",
  #     initialVolume: 10,
  #     idealVolume: 10,
  #     lagTimeFlag: true,
  #     lagTimeValue: 10,
  #     container: "9",
  #     apps: [
  #       "app_1447076981841",
  #       "app_1447076981845",
  #       "app_1447076981123"
  #     ],
  #     pid: "skjdfnkq",
  #     dsorbFlag: true,
  #     id: "tag_1447073782990",
  #     desc: "new",
  #     upDated: 1447073782990
  #   }, {
  #     status: "on",
  #     type: "dd",
  #     key: "qseffé",
  #     lot: "azeff('g",
  #     onBoardStabilityValue: 8,
  #     onBoardStabilityUnit: "h",
  #     inUseStabilityValue: 5,
  #     inUseStabilityUnit: "d",
  #     initialVolume: 7,
  #     idealVolume: 7,
  #     container: "4",
  #     apps: [
  #       "app_1447076981845",
  #       "app_1447076981123"
  #     ],
  #     pid: "sqfeqf",
  #     id: "tag_1447073820512",
  #     desc: "new",
  #     upDated: 1447073820512
  #   }, {
  #     status: "on",
  #     type: "rbr",
  #     key: "qfarfr",
  #     lot: "fhtyhe",
  #     onBoardStabilityValue: 6,
  #     onBoardStabilityUnit: "d",
  #     inUseStabilityValue: 6,
  #     inUseStabilityUnit: "h",
  #     initialVolume: 7,
  #     idealVolume: 11,
  #     container: "2",
  #     apps: [
  #       "app_1447076981841",
  #       "app_1447076981343",
  #       "app_1447076981834"
  #     ],
  #     rbrType: "2",
  #     protocolId: "qskfnir",
  #     id: "tag_1447073863660",
  #     desc: "new",
  #     upDated: 1447073863660
  #   }, {
  #     status: "on",
  #     type: "rihr",
  #     key: "sqfaer",
  #     lot: "z",
  #     onBoardStabilityValue: 9,
  #     onBoardStabilityUnit: "d",
  #     inUseStabilityValue: 7,
  #     inUseStabilityUnit: "d",
  #     initialVolume: 8,
  #     idealVolume: 10,
  #     container: "1",
  #     apps: [
  #       "app_1447076981343",
  #       "app_1447076981834"
  #     ],
  #     pid: "sqfeqf",
  #     dsorbFlag: true,
  #     rihrType: "i",
  #     minMean: 0.07,
  #     maxMean: 0.1,
  #     maxSd: 0.07,
  #     mmc: "qsfffrq",
  #     correctionFactor: 0.12,
  #     id: "tag_1447073921380",
  #     desc: "new",
  #     upDated: 1447073921380
  #   }, {
  #     status: "on",
  #     type: "cac",
  #     key: "a",
  #     lot: "fhtyhe",
  #     onBoardStabilityValue: 3,
  #     onBoardStabilityUnit: "h",
  #     inUseStabilityValue: 5,
  #     inUseStabilityUnit: "d",
  #     lagTimeFlag: true,
  #     lagTimeValue: 6,
  #     apps: [
  #       "app_1447076981841",
  #       "app_1447076981842"
  #     ],
  #     minMean: 0.08,
  #     maxMean: 0.08,
  #     maxSd: 0.08,
  #     mmc: "qsfffrq",
  #     name: "qskfa",
  #     k: 0.08,
  #     preTreatmentFlag: true,
  #     positions: [
  #       "position_1447158095432",
  #       "position_1447158113046"
  #     ],
  #     id: "tag_1447158159108",
  #     desc: "new",
  #     upDated: 1447158159108
  #   }, {
  #     status: "on",
  #     type: "ccc",
  #     key: "q",
  #     lot: "fhtyhe",
  #     onBoardStabilityValue: 6,
  #     onBoardStabilityUnit: "d",
  #     inUseStabilityValue: 8,
  #     inUseStabilityUnit: "h",
  #     container: "container_1447076981852",
  #     apps: [
  #       "app_1447076981841",
  #       "app_1447076981844"
  #     ],
  #     pid: "skjdfnkq",
  #     cccType: "con",
  #     analytes: [
  #       "analyte_1447158543823",
  #       "analyte_1447158569246"
  #     ],
  #     id: "tag_1447158576339",
  #     desc: "new",
  #     upDated: 1447158576339
  #   }, {
  #     status: "on",
  #     type: "ccc",
  #     key: "q",
  #     lot: "z",
  #     onBoardStabilityValue: 5,
  #     onBoardStabilityUnit: "h",
  #     inUseStabilityValue: 6,
  #     inUseStabilityUnit: "h",
  #     container: "container_1447076981858",
  #     apps: [
  #       "app_1447076981842"
  #     ],
  #     pid: "kldfn",
  #     cccType: "cal",
  #     analytes: [
  #       "analyte_1447159013169",
  #       "analyte_1447159025479"
  #     ],
  #     reagents: [
  #       "reagent_1447159036546"
  #     ],
  #     id: "tag_1447159044548",
  #     desc: "new",
  #     upDated: 1447159044548
  #   }]
  $scope.tags = []
  $scope.tag = null

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
      i = 0
      i++ while $scope.tag.id != $scope.tags[i].id
      $scope.tag.desc = "edit->"
      switch $scope.tag.type
        when 'aius' then $scope.tag.desc += " Revision:"+$scope.tag.revision
        when 'disec' || 'dised' || 'dss' || 'rht' || 'dd' || 'cac' then $scope.tag.desc += " Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'mmc' then $scope.tag.desc += " mmcId:"+$scope.tag.mmcId
        when 'rbr' then $scope.tag.desc += " Rbr Type:"+$scope.tag.rbrType+" Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'rihr' then $scope.tag.desc += " Rihr Type:"+$scope.tag.rihrType+" Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'ccc' then $scope.tag.desc += " Ccc Type:"+$scope.tag.cccType+" Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        else $scope.tag.desc += " Oups!"
      $scope.tags[i] = $scope.tag
    else
      $scope.tag.id = "tag_"+Date.now()
      $scope.tag.desc = "new->"
      switch $scope.tag.type
        when 'aius' then $scope.tag.desc += " Revision:"+$scope.tag.revision
        when 'disec' || 'dised' || 'dss' || 'rht' || 'dd' || 'cac' then $scope.tag.desc += " Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'mmc' then $scope.tag.desc += " mmcId:"+$scope.tag.mmcId
        when 'rbr' then $scope.tag.desc += " Rbr Type:"+$scope.tag.rbrType+" Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'rihr' then $scope.tag.desc += " Rihr Type:"+$scope.tag.rihrType+" Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'ccc' then $scope.tag.desc += " Ccc Type:"+$scope.tag.cccType+" Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        else $scope.tag.desc += " Oups!"      
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

# CONTAINERS (front loaded)

  $scope.containerView = false
  $scope.containerTableView = false
  $scope.containerFormView = false
  $scope.containerPreView = false

  $scope.containers  = [
    {
      status: "on",
      containerId: 0,
      name: "PT_11_4.5mL",
      usedIn: [
        "ccc"
      ],
      desc: "<0> PT_11_4.5mL",
      # id: "container_0000000000000",
      # upDated: 0000000000000
    }, {
      status: "on",
      containerId: 1,
      name: "PT_13_6mL",
      usedIn: [
        "ccc"
      ],
      desc: "<1> PT_13_6mL",
      # id: "container_0000000000001",
      # upDated: 0000000000001
    }, {
      status: "on",
      containerId: 2,
      name: "ST_13_5mL",
      usedIn: [
        "ccc"
      ],
      desc: "<2> ST_13_5mL",
      # id: "container_0000000000002",
      # upDated: 0000000000002
    }, {
      status: "on",
      containerId: 3,
      name: "PT_16_10mL",
      usedIn: [
        "ccc"
      ],
      desc: "<3> PT_16_10mL",
      # id: "container_0000000000003",
      # upDated: 0000000000003
    }, {
      status: "on",
      containerId: 4,
      name: "Cupule 500",
      usedIn: [
        "ccc"
      ],
      desc: "<4> Cupule 500",
      # id: "container_0000000000004",
      # upDated: 0000000000004
    }, {
      status: "on",
      containerId: 5,
      name: "Cupule 2mL",
      usedIn: [
        "ccc"
      ],
      desc: "<5> Cupule 2mL",
      # id: "container_0000000000005",
      # upDated: 0000000000005
    }, {
      status: "on",
      containerId: 6,
      name: "PT_15_8.5mL",
      usedIn: [
        "ccc"
      ],
      desc: "<6> PT_15_8.5mL",
      # id: "container_0000000000006",
      # upDated: 0000000000006
    }, {
      status: "on",
      containerId: 7,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<7> ",
      # id: "container_0000000000007",
      # upDated: 0000000000007
    }, {
      status: "on",
      containerId: 8,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<8> ",
      # id: "container_0000000000008",
      # upDated: 0000000000008
    }, {
      status: "on",
      containerId: 9,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<9> ",
      # id: "container_0000000000009",
      # upDated: 0000000000009
    }, {
      status: "on",
      containerId: 10,
      name: "1mL Verre Réactif",
      usedIn: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr"
      ],
      desc: "<10> 1mL Verre Réactif",
      # id: "container_0000000000010",
      # upDated: 0000000000010
    }, {
      status: "on",
      containerId: 11,
      name: "10mL Verre Réactif",
      usedIn: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr"
      ],
      desc: "<11> 10mL Verre Réactif",
      # id: "container_0000000000011",
      # upDated: 0000000000011
    }, {
      status: "on",
      containerId: 17,
      name: "10mL CAL B",
      usedIn: [
        "ccc"
      ],
      desc: "<17> 10mL CAL B",
      # id: "container_0000000000012",
      # upDated: 0000000000012
    }, {
      status: "on",
      containerId: 19,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<19> ",
      # id: "container_0000000000013",
      # upDated: 0000000000013
    }, {
      status: "on",
      containerId: 20,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<20> ",
      # id: "container_0000000000014",
      # upDated: 0000000000014
    }, {
      status: "on",
      containerId: 21,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<21> ",
      # id: "container_0000000000015",
      # upDated: 0000000000015
    }, {
      status: "on",
      containerId: 22,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<22> ",
      # id: "container_0000000000016",
      # upDated: 0000000000016
    }, {
      status: "on",
      containerId: 23,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<23> ",
      # id: "container_0000000000017",
      # upDated: 0000000000017
    }, {
      status: "on",
      containerId: 24,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<24> ",
      # id: "container_0000000000018",
      # upDated: 0000000000018
    }, {
      status: "on",
      containerId: 25,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<25> ",
      # id: "container_0000000000020",
      # upDated: 0000000000020
    }, {
      status: "on",
      containerId: 26,
      name: "CASBCHNANOP reduced dead volume",
      usedIn: [
        "cac"
      ],
      desc: "<26> CASBCHNANOP reduced dead volume",
      # id: "container_0000000000021",
      # upDated: 0000000000021
    }, {
      status: "on",
      containerId: 27,
      name: "CASBCHNANOP",
      usedIn: [
        "cac"
      ],
      desc: "<27> CASBCHNANOP",
      # id: "container_0000000000022",
      # upDated: 0000000000022
    }, {
      status: "on",
      containerId: 28,
      name: "CASBCH1X",
      usedIn: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr",
        "cac"
      ],
      desc: "<28> CASBCH1X",
      # id: "container_0000000000023",
      # upDated: 0000000000023
    }, {
      status: "on",
      containerId: 29,
      name: "CASBCH2X",
      usedIn: [
        "cac"
      ],
      desc: "<29> CASBCH2X",
      # id: "container_0000000000024",
      # upDated: 0000000000024
    }, {
      status: "on",
      containerId: 30,
      name: "CASBCH3X",
      usedIn: [
        "cac"
      ],
      desc: "<30> CASBCH3X",
      # id: "container_0000000000025",
      # upDated: 0000000000025
    }, {
      status: "on",
      containerId: 34,
      name: "CAS_REDUC_BCH1X",
      usedIn: [
        "cac"
      ],
      desc: "<34> CAS_REDUC_BCH1X",
      # id: "container_0000000000026",
      # upDated: 0000000000026
    }, {
      status: "on",
      containerId: 35,
      name: "CAS_REDUC_BCH2X",
      usedIn: [
        "cac"
      ],
      desc: "<35> CAS_REDUC_BCH2X",
      # id: "container_0000000000027",
      # upDated: 0000000000027
    }, {
      status: "on",
      containerId: 36,
      name: "CAS_REDUC_BCH3X",
      usedIn: [
        "cac"
      ],
      desc: "<36> CAS_REDUC_BCH3X",
      # id: "container_0000000000028",
      # upDated: 0000000000028
    }, {
      status: "on",
      containerId: 37,
      name: "BCH_UNIT_20ML",
      usedIn: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr"
      ],
      desc: "<37> BCH_UNIT_20ML",
      # id: "container_0000000000029",
      # upDated: 0000000000029
    }, {
      status: "on",
      containerId: 38,
      name: "BCH_UNIT_REDUC_20ML",
      usedIn: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr"
      ],
      desc: "<38> BCH_UNIT_REDUC_20ML",
      # id: "container_0000000000030",
      # upDated: 0000000000030
    }, {
      status: "on",
      containerId: 39,
      name: "BCH_UNIT_50ML",
      usedIn: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr"
      ],
      desc: "<39> BCH_UNIT_50ML",
      # id: "container_0000000000031",
      # upDated: 0000000000031
    }, {
      status: "on",
      containerId: 40,
      name: "BCH_UNIT_REDUC_20ML",
      usedIn: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr"
      ],
      desc: "<40> BCH_UNIT_REDUC_20ML",
      # id: "container_0000000000032",
      # upDated: 0000000000032
    }, {
      status: "on",
      containerId: 42,
      name: "CAL/CTL Immuno",
      usedIn: [
        "ccc"
      ],
      desc: "<42> CAL/CTL Immuno",
      # id: "container_0000000000033",
      # upDated: 0000000000033
    }, {
      status: "on",
      containerId: 43,
      name: "CASBCH1X reduced dead volume",
      usedIn: [
        "cac"
      ],
      desc: "<43> CASBCH1X reduced dead volume",
      # id: "container_0000000000034",
      # upDated: 0000000000034
    }, {
      status: "on",
      containerId: 44,
      name: "CASBCH2X reduced dead volume",
      usedIn: [
        "cac"
      ],
      desc: "<44> CASBCH2X reduced dead volume",
      # id: "container_0000000000035",
      # upDated: 0000000000035
    }, {
      status: "on",
      containerId: 45,
      name: "CASBCH3X reduced dead volume",
      usedIn: [
        "cac"
      ],
      desc: "<45> CASBCH3X reduced dead volume",
      # id: "container_0000000000036",
      # upDated: 0000000000036
    }, {
      status: "on",
      containerId: 46,
      name: "IDS_UNIT_13ML",
      usedIn: [
        "disec",
        "dised",
        "dss",
        "rht",
        "dd",
        "rbr",
        "rihr"
      ],
      desc: "<46> IDS_UNIT_13ML",
      # id: "container_0000000000037",
      # upDated: 0000000000037
    }
    ]
  # $scope.containers = []
  $scope.container = null

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
      i = 0
      i++ while $scope.container.id != $scope.containers[i].id
      $scope.container.desc = "<"+$scope.container.containerId+"> "+$scope.container.name
      $scope.containers[i] = $scope.container
    else
      $scope.container.id = "container_"+Date.now()
      $scope.container.desc = "<"+$scope.container.containerId+"> "+$scope.container.name
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

# APPS

  $scope.appView = false
  $scope.appTableView = false
  $scope.appFormView = false
  $scope.appPreView = false

  # $scope.apps  =[
  #   {
  #     status: "on",
  #     name: "app 1",
  #     id: "app_1447076981841",
  #     desc: "new",
  #     upDated: 1447076981841
  #   }, {
  #     status: "on",
  #     name: "app 2",
  #     id: "app_1447076981842",
  #     desc: "new",
  #     upDated: 1447076981842
  #   }, {
  #     status: "on",
  #     name: "app 3",
  #     id: "app_1447076981843",
  #     desc: "new",
  #     upDated: 1447076981843
  #   }, {
  #     status: "on",
  #     name: "app 4",
  #     id: "app_1447076981844",
  #     desc: "new",
  #     upDated: 1447076981844}]

  $scope.apps = []
  $scope.app = null

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
