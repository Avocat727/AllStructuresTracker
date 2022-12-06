from PIL import Image

background = Image.open('./functions/images/overlay.png')
nether_fossil = Image.open('./functions/images/nether_fossil.png')

background.paste(nether_fossil, (0,-1), mask=nether_fossil)

background.save("overlay.png")
background.save("./functions/images/overlay.png")