from mapnik2 import *
mapfile = 'bm3.xml'
map_output = 'bm3.png'
m = Map(4*1024,4*1024)
load_map(m,mapfile)
bbox=Box2d(1660000,6030000,1680000,6040000)
m.zoom_to_box(bbox)
render_to_file(m,map_output)

