from PIL import Image

background = Image.open('./functions/images/overlay.png')
ruined_portal = Image.open('./functions/images/ruined_portal.png')

background.paste(ruined_portal, (0,1), mask=ruined_portal)

background.save("overlay.png")
background.save("./functions/images/overlay.png")