import xml.etree.ElementTree as ET
tree = ET.parse('resp6.xml')
root = tree.getroot()
root.tag
root.attrib
for child in root:
	print child.tag
