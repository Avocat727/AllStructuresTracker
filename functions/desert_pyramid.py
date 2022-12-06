from PIL import Image

background = Image.open('./functions/images/overlay.png')
desert_pyramid = Image.open('./functions/images/desert_pyramid.png')

background.paste(desert_pyramid, (0,1), mask=desert_pyramid)

background.save("overlay.png")
background.save("./functions/images/overlay.png")