from mapnik2 import *
mapfile = 'bm2.xml'
map_output = 'bm2.png'
m = Map(4*1024,4*1024)
load_map(m,mapfile)
bbox=(Envelope(15.2,47.4,15.3,47.45))
m.zoom_to_box(bbox)
render_to_file(m,map_output)

