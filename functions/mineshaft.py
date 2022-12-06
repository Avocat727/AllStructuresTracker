from PIL import Image

background = Image.open('./functions/images/overlay.png')
mineshaft = Image.open('./functions/images/mineshaft.png')

background.paste(mineshaft, (0,-1), mask=mineshaft)

background.save("overlay.png")
background.save("./functions/images/overlay.png")