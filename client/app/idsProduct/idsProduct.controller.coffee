'use strict'
angular.module 'aliimsApp'
.controller 'IdsProductCtrl', ($scope, $http, socket, Modal, $filter) ->

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

# TAGS

  $scope.tagView = true
  $scope.tagTableView = false
  $scope.tagFormView = false
  $scope.tagPreView = false

  $scope.tags = []
  $scope.tag = null
  
  $scope.updateTags = () ->
    $http.get('/api/idsTags').success (tags) ->
      $scope.tags = tags
      socket.syncUpdates 'tag', $scope.tags

  $scope.updateTags()

  $scope.tagFormTypeOptions = [
    {val: "aius", desc: "Ancilliaries In Use Stability"},
    {val: "disec", desc: "D Ise Cleaner"},
    {val: "dised", desc: "D Ise Diluent"},
    {val: "dss", desc: "D Saline Solution"},
    {val: "mmc", desc: "M Master Curve"},
    {val: "rht", desc: "R Haemostasis Trigger"},
    {val: "dd", desc: "D Diluent"},
    {val: "rbr", desc: "R Biochemistry Reagent"},
    {val: "rihr", desc: "R Immunology Haemostasis Reagent"},
    {val: "cac", desc: "CA Cartridge"},
    {val: "ccc", desc: "C Calibrator Control"}]
  $scope.tagFormStabilityUnitOptions = [{val: "h", desc: "Hour(s)"}, {val: "d", desc: "Day(s)"}]
  $scope.tagFormRbrTypeOptions  = [{val: "1", desc: "R1"}, {val: "2", desc: "R2"}, {val: "3", desc: "R3"}]
  $scope.tagFormRihrTypeOptions  = [{val: "i", desc: "Immunology"}, {val: "h", desc: "Haemostasis"}]
  $scope.tagFormCccTypeOptions  = [{val: "cal", desc: "Calibrator"}, {val: "con", desc: "Control"}]

  $scope.selectTag = (tag) ->
    $scope.tag = tag
    $scope.tagFormView = true
    $scope.tagPreView = true
    true

  $scope.saveTag = () ->
    if $scope.tag._id
      switch $scope.tag.type
        when 'aius' then $scope.tag.desc = " Revision:"+$scope.tag.revision
        when 'disec' then $scope.tag.desc = " Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'dised' then $scope.tag.desc = " Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'dss' then $scope.tag.desc = " Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'rht' then $scope.tag.desc = " Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'dd' then $scope.tag.desc = " Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'cac' then $scope.tag.desc = " Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'mmc' then $scope.tag.desc = " mmcId:"+$scope.tag.mmcId
        when 'rbr' then $scope.tag.desc = " Rbr Type:"+$scope.tag.rbrType+" Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'rihr' then $scope.tag.desc = " Rihr Type:"+$scope.tag.rihrType+" Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'ccc' then $scope.tag.desc = " Ccc Type:"+$scope.tag.cccType+" Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        else $scope.tag.desc = " Oups!"
      $scope.tag.upDated = Date.now()
      $http.patch '/api/idsTags',
        $scope.tag
    else
      switch $scope.tag.type
        when 'aius' then $scope.tag.desc = " Revision:"+$scope.tag.revision
        when 'disec' then $scope.tag.desc = " Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'dised' then $scope.tag.desc = " Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'dss' then $scope.tag.desc = " Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'rht' then $scope.tag.desc = " Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'dd' then $scope.tag.desc = " Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'cac' then $scope.tag.desc = " Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'mmc' then $scope.tag.desc = " mmcId:"+$scope.tag.mmcId
        when 'rbr' then $scope.tag.desc = " Rbr Type:"+$scope.tag.rbrType+" Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'rihr' then $scope.tag.desc = " Rihr Type:"+$scope.tag.rihrType+" Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        when 'ccc' then $scope.tag.desc = " Ccc Type:"+$scope.tag.cccType+" Key:"+$scope.tag.key+" Lot:"+$scope.tag.lot+" Expiry:"+$filter('date')($scope.tag.expiry, $scope.formats[0])
        else $scope.tag.desc = " Oups!"      
      $scope.tag.upDated = Date.now()
      $http.post '/api/idsTags',
        $scope.tag
      $scope.updateTags()
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
    i += 1  while $scope.tags[i]._id != tag._id
    $http.delete '/api/idsTags/' + tag._id
    $scope.tags.splice(i,1)
    $scope.clearTag()
    true

  $scope.$on '$destroy', ->
    socket.unsyncUpdates 'tag'

# CONTAINERS

  $scope.containerView = false
  $scope.containerTableView = false
  $scope.containerFormView = false
  $scope.containerPreView = false

  $scope.containers  = [
    {
      # status: "on",
      containerId: 0,
      name: "PT_11_4.5mL",
      usedIn: [
        "ccc"
      ],
      desc: "<0> PT_11_4.5mL",
      # id: "container_0000000000000",
      # upDated: 0000000000000
    }, {
      # status: "on",
      containerId: 1,
      name: "PT_13_6mL",
      usedIn: [
        "ccc"
      ],
      desc: "<1> PT_13_6mL",
      # id: "container_0000000000001",
      # upDated: 0000000000001
    }, {
      # status: "on",
      containerId: 2,
      name: "ST_13_5mL",
      usedIn: [
        "ccc"
      ],
      desc: "<2> ST_13_5mL",
      # id: "container_0000000000002",
      # upDated: 0000000000002
    }, {
      # status: "on",
      containerId: 3,
      name: "PT_16_10mL",
      usedIn: [
        "ccc"
      ],
      desc: "<3> PT_16_10mL",
      # id: "container_0000000000003",
      # upDated: 0000000000003
    }, {
      # status: "on",
      containerId: 4,
      name: "Cupule 500",
      usedIn: [
        "ccc"
      ],
      desc: "<4> Cupule 500",
      # id: "container_0000000000004",
      # upDated: 0000000000004
    }, {
      # status: "on",
      containerId: 5,
      name: "Cupule 2mL",
      usedIn: [
        "ccc"
      ],
      desc: "<5> Cupule 2mL",
      # id: "container_0000000000005",
      # upDated: 0000000000005
    }, {
      # status: "on",
      containerId: 6,
      name: "PT_15_8.5mL",
      usedIn: [
        "ccc"
      ],
      desc: "<6> PT_15_8.5mL",
      # id: "container_0000000000006",
      # upDated: 0000000000006
    }, {
      # status: "on",
      containerId: 7,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<7> ",
      # id: "container_0000000000007",
      # upDated: 0000000000007
    }, {
      # status: "on",
      containerId: 8,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<8> ",
      # id: "container_0000000000008",
      # upDated: 0000000000008
    }, {
      # status: "on",
      containerId: 9,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<9> ",
      # id: "container_0000000000009",
      # upDated: 0000000000009
    }, {
      # status: "on",
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
      # status: "on",
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
      # status: "on",
      containerId: 17,
      name: "10mL CAL B",
      usedIn: [
        "ccc"
      ],
      desc: "<17> 10mL CAL B",
      # id: "container_0000000000012",
      # upDated: 0000000000012
    }, {
      # status: "on",
      containerId: 19,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<19> ",
      # id: "container_0000000000013",
      # upDated: 0000000000013
    }, {
      # status: "on",
      containerId: 20,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<20> ",
      # id: "container_0000000000014",
      # upDated: 0000000000014
    }, {
      # status: "on",
      containerId: 21,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<21> ",
      # id: "container_0000000000015",
      # upDated: 0000000000015
    }, {
      # status: "on",
      containerId: 22,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<22> ",
      # id: "container_0000000000016",
      # upDated: 0000000000016
    }, {
      # status: "on",
      containerId: 23,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<23> ",
      # id: "container_0000000000017",
      # upDated: 0000000000017
    }, {
      # status: "on",
      containerId: 24,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<24> ",
      # id: "container_0000000000018",
      # upDated: 0000000000018
    }, {
      # status: "on",
      containerId: 25,
      name: "",
      usedIn: [
        "ccc"
      ],
      desc: "<25> ",
      # id: "container_0000000000020",
      # upDated: 0000000000020
    }, {
      # status: "on",
      containerId: 26,
      name: "CASBCHNANOP reduced dead volume",
      usedIn: [
        "cac"
      ],
      desc: "<26> CASBCHNANOP reduced dead volume",
      # id: "container_0000000000021",
      # upDated: 0000000000021
    }, {
      # status: "on",
      containerId: 27,
      name: "CASBCHNANOP",
      usedIn: [
        "cac"
      ],
      desc: "<27> CASBCHNANOP",
      # id: "container_0000000000022",
      # upDated: 0000000000022
    }, {
      # status: "on",
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
      # status: "on",
      containerId: 29,
      name: "CASBCH2X",
      usedIn: [
        "cac"
      ],
      desc: "<29> CASBCH2X",
      # id: "container_0000000000024",
      # upDated: 0000000000024
    }, {
      # status: "on",
      containerId: 30,
      name: "CASBCH3X",
      usedIn: [
        "cac"
      ],
      desc: "<30> CASBCH3X",
      # id: "container_0000000000025",
      # upDated: 0000000000025
    }, {
      # status: "on",
      containerId: 34,
      name: "CAS_REDUC_BCH1X",
      usedIn: [
        "cac"
      ],
      desc: "<34> CAS_REDUC_BCH1X",
      # id: "container_0000000000026",
      # upDated: 0000000000026
    }, {
      # status: "on",
      containerId: 35,
      name: "CAS_REDUC_BCH2X",
      usedIn: [
        "cac"
      ],
      desc: "<35> CAS_REDUC_BCH2X",
      # id: "container_0000000000027",
      # upDated: 0000000000027
    }, {
      # status: "on",
      containerId: 36,
      name: "CAS_REDUC_BCH3X",
      usedIn: [
        "cac"
      ],
      desc: "<36> CAS_REDUC_BCH3X",
      # id: "container_0000000000028",
      # upDated: 0000000000028
    }, {
      # status: "on",
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
      # status: "on",
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
      # status: "on",
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
      # status: "on",
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
      # status: "on",
      containerId: 42,
      name: "CAL/CTL Immuno",
      usedIn: [
        "ccc"
      ],
      desc: "<42> CAL/CTL Immuno",
      # id: "container_0000000000033",
      # upDated: 0000000000033
    }, {
      # status: "on",
      containerId: 43,
      name: "CASBCH1X reduced dead volume",
      usedIn: [
        "cac"
      ],
      desc: "<43> CASBCH1X reduced dead volume",
      # id: "container_0000000000034",
      # upDated: 0000000000034
    }, {
      # status: "on",
      containerId: 44,
      name: "CASBCH2X reduced dead volume",
      usedIn: [
        "cac"
      ],
      desc: "<44> CASBCH2X reduced dead volume",
      # id: "container_0000000000035",
      # upDated: 0000000000035
    }, {
      # status: "on",
      containerId: 45,
      name: "CASBCH3X reduced dead volume",
      usedIn: [
        "cac"
      ],
      desc: "<45> CASBCH3X reduced dead volume",
      # id: "container_0000000000036",
      # upDated: 0000000000036
    }, {
      # status: "on",
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
  $scope.container = null

  $scope.containerFormUsedInOptions = [
    # {val: "aius", desc: "Ancilliaries In Use Stability"},
    {val: "disec", desc: "D Ise Cleaner"},
    {val: "dised", desc: "D Ise Diluent"},
    {val: "dss", desc: "D Saline Solution"},
    # {val: "mmc", desc: "M Master Curve"},
    {val: "rht", desc: "R Haemostasis Trigger"},
    {val: "dd", desc: "D Diluent"},
    {val: "rbr", desc: "R Biochemistry Reagent"},
    {val: "rihr", desc: "R Biochemistry Immunology Haemostasis Reagent"},
    {val: "cac", desc: "CA Cartridge"},
    {val: "ccc", desc: "C Calibrator Control"}]

  $scope.selectContainer = (container) ->
    $scope.container = angular.copy(container)
    $scope.containerFormView = true
    $scope.containerPreView = true
    true

  $scope.saveContainer = () ->
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

  $scope.apps = []
  $scope.app = null

  $scope.selectApp = (app) ->
    $scope.app = angular.copy(app)
    $scope.appFormView = true
    $scope.appPreView = true
    true

  $scope.saveApp = () ->
    $scope.app.desc = "<"+$scope.app.appId+"> "+$scope.app.name
    if $scope.app.id
      i = 0
      i++ while $scope.app.id != $scope.apps[i].id
      $scope.apps[i] = $scope.app
    else
      $scope.app.id = "app_"+Date.now()
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

  $scope.positions = []
  $scope.position = null

  $scope.positionFormTypeOptions = [
    {val: "e", desc: "Empty"},
    {val: "d", desc: "Diluent"},
    {val: "r", desc: "Reagent (immuno)"},
    {val: "p", desc: "Pretreatment (immuno)"}]

  $scope.selectPosition = (position) ->
    $scope.position = angular.copy(position)
    $scope.positionFormView = true
    $scope.positionPreView = true
    true

  $scope.savePosition = () ->
    $scope.position.desc = "<"+$scope.position.positionId+"> pos:"+$scope.position.pos+", pid:"+$scope.position.pid
    if $scope.position.id
      i = 0
      i++ while $scope.position.id != $scope.positions[i].id
      $scope.positions[i] = $scope.position
    else
      $scope.position.id = "position_"+Date.now()
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

  $scope.analytes = []
  $scope.analyte = null

  $scope.selectAnalyte = (analyte) ->
    $scope.analyte = angular.copy(analyte)
    $scope.analyteFormView = true
    $scope.analytePreView = true
    true

  $scope.saveAnalyte = () ->
    desc = "<"+$scope.analyte.analyteId+"> target:"+$scope.analyte.target
    if $scope.analyte.tolerance
      desc += ", tolerance:"+$scope.analyte.tolerance
    if $scope.analyte.reference
      desc += ", reference:"+$scope.analyte.reference
    $scope.analyte.desc = desc
    if $scope.analyte.id
      i = 0
      i++ while $scope.analyte.id != $scope.analytes[i].id
      $scope.analytes[i] = $scope.analyte
    else
      $scope.analyte.id = "analyte_"+Date.now()
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

  $scope.reagents = []
  $scope.reagent = null

  $scope.selectReagent = (reagent) ->
    $scope.reagent = angular.copy(reagent)
    $scope.reagentFormView = true
    $scope.reagentPreView = true
    true

  $scope.saveReagent = () ->
    $scope.reagent.desc = "<"+$scope.reagent.reagentId+"> "
    if $scope.reagent.id
      i = 0
      i++ while $scope.reagent.id != $scope.reagents[i].id
      $scope.reagents[i] = $scope.reagent
    else
      $scope.reagent.id = "reagent_"+Date.now()
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
