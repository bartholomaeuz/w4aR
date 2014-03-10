walking_speed = 5

speeds = {
  ["residential"] = walking_speed*0.5,
  ["road"] = walking_speed*0.5,
  ["living_street"] = walking_speed,
  ["service"] = walking_speed*0.6,
  ["track"] = walking_speed*0.8,
  ["path"] = walking_speed*0.8,
  ["steps"] = walking_speed*0.5,
  ["pedestrian"] = walking_speed,
  ["footway"] = walking_speed,
  ["pier"] = walking_speed,
  ["default"] = walking_speed
}

surface_speeds = {
  ["fine_gravel"] =   walking_speed*0.75,
  ["gravel"] =        walking_speed*0.75,
  ["pebbelstone"] =   walking_speed*0.75,
  ["mud"] =           walking_speed*0.5,
  ["sand"] =          walking_speed*0.5
}
