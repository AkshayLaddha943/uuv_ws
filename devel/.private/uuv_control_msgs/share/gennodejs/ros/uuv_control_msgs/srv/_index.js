
"use strict";

let GetPIDParams = require('./GetPIDParams.js')
let SwitchToAutomatic = require('./SwitchToAutomatic.js')
let InitWaypointsFromFile = require('./InitWaypointsFromFile.js')
let InitCircularTrajectory = require('./InitCircularTrajectory.js')
let GetWaypoints = require('./GetWaypoints.js')
let InitWaypointSet = require('./InitWaypointSet.js')
let SetMBSMControllerParams = require('./SetMBSMControllerParams.js')
let ClearWaypoints = require('./ClearWaypoints.js')
let AddWaypoint = require('./AddWaypoint.js')
let ResetController = require('./ResetController.js')
let GoToIncremental = require('./GoToIncremental.js')
let StartTrajectory = require('./StartTrajectory.js')
let GetSMControllerParams = require('./GetSMControllerParams.js')
let Hold = require('./Hold.js')
let SetPIDParams = require('./SetPIDParams.js')
let SetSMControllerParams = require('./SetSMControllerParams.js')
let SwitchToManual = require('./SwitchToManual.js')
let InitHelicalTrajectory = require('./InitHelicalTrajectory.js')
let GetMBSMControllerParams = require('./GetMBSMControllerParams.js')
let IsRunningTrajectory = require('./IsRunningTrajectory.js')
let GoTo = require('./GoTo.js')
let InitRectTrajectory = require('./InitRectTrajectory.js')

module.exports = {
  GetPIDParams: GetPIDParams,
  SwitchToAutomatic: SwitchToAutomatic,
  InitWaypointsFromFile: InitWaypointsFromFile,
  InitCircularTrajectory: InitCircularTrajectory,
  GetWaypoints: GetWaypoints,
  InitWaypointSet: InitWaypointSet,
  SetMBSMControllerParams: SetMBSMControllerParams,
  ClearWaypoints: ClearWaypoints,
  AddWaypoint: AddWaypoint,
  ResetController: ResetController,
  GoToIncremental: GoToIncremental,
  StartTrajectory: StartTrajectory,
  GetSMControllerParams: GetSMControllerParams,
  Hold: Hold,
  SetPIDParams: SetPIDParams,
  SetSMControllerParams: SetSMControllerParams,
  SwitchToManual: SwitchToManual,
  InitHelicalTrajectory: InitHelicalTrajectory,
  GetMBSMControllerParams: GetMBSMControllerParams,
  IsRunningTrajectory: IsRunningTrajectory,
  GoTo: GoTo,
  InitRectTrajectory: InitRectTrajectory,
};
