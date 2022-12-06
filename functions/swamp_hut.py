from PIL import Image

background = Image.open('./functions/images/overlay.png')
swamp_hut = Image.open('./functions/images/swamp_hut.png')

background.paste(swamp_hut, (0,-1), mask=swamp_hut)

background.save("overlay.png")
background.save("./functions/images/overlay.png")