from PIL import Image

background = Image.open('./functions/images/overlay.png')
buried_treasure = Image.open('./functions/images/buried_treasure.png')

background.paste(buried_treasure, (0,1), mask=buried_treasure)

background.save("overlay.png")
background.save("./functions/images/overlay.png")