from PIL import Image

background = Image.open('./functions/images/overlay.png')
ocean_monument = Image.open('./functions/images/ocean_monument.png')

background.paste(ocean_monument, (0,1), mask=ocean_monument)

background.save("overlay.png")
background.save("./functions/images/overlay.png")