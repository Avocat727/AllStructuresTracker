from PIL import Image

background = Image.open('./functions/images/overlay.png')
igloo = Image.open('./functions/images/igloo.png')

background.paste(igloo, (0,-1), mask=igloo)

background.save("overlay.png")
background.save("./functions/images/overlay.png")