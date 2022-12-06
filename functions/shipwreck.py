from PIL import Image

background = Image.open('./functions/images/overlay.png')
shipwreck = Image.open('./functions/images/shipwreck.png')

background.paste(shipwreck, (0,-1), mask=shipwreck)

background.save("overlay.png")
background.save("./functions/images/overlay.png")