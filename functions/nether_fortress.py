from PIL import Image

background = Image.open('./functions/images/overlay.png')
nether_fortress = Image.open('./functions/images/nether_fortress.png')

background.paste(nether_fortress, (0,-1), mask=nether_fortress)

background.save("overlay.png")
background.save("./functions/images/overlay.png")