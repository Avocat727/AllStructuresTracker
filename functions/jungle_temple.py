from PIL import Image

background = Image.open('./functions/images/overlay.png')
jungle_temple = Image.open('./functions/images/jungle_temple.png')

background.paste(jungle_temple, (0,-1), mask=jungle_temple)

background.save("overlay.png")
background.save("./functions/images/overlay.png")