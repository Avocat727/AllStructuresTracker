from PIL import Image

background = Image.open('./functions/images/bg.png')

background.save("overlay.png")
background.save("./functions/images/overlay.png")