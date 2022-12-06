from PIL import Image

background = Image.open('./functions/images/overlay.png')
village = Image.open('./functions/images/village.png')

background.paste(village, (0,-1), mask=village)

background.save("overlay.png")
background.save("./functions/images/overlay.png")