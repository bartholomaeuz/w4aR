walking_speed = 5

speeds = {
  ["residential"] = walking_speed*0.5, 
  ["living_street"] = walking_speed, 
  ["track"] = walking_speed*0.8,
  ["path"] = walking_speed*0.8,
  ["steps"] = walking_speed*0.5,
  ["pedestrian"] = walking_speed,
  ["footway"] = walking_speed
}

surface_speeds = {
  ["fine_gravel"] =   walking_speed*0.75,
  ["gravel"] =        walking_speed*0.75,  
  ["sand"] =          walking_speed*0.5
}
