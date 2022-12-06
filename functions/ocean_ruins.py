from PIL import Image

background = Image.open('./functions/images/overlay.png')
ocean_ruins = Image.open('./functions/images/ocean_ruins.png')

background.paste(ocean_ruins, (0,1), mask=ocean_ruins)

background.save("overlay.png")
background.save("./functions/images/overlay.png")