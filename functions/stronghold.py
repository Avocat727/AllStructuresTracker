from PIL import Image

background = Image.open('./functions/images/overlay.png')
stronghold = Image.open('./functions/images/stronghold.png')

background.paste(stronghold, (0,-1), mask=stronghold)

background.save("overlay.png")
background.save("./functions/images/overlay.png")