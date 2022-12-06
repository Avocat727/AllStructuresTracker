from PIL import Image

background = Image.open('./functions/images/overlay.png')
woodland_mansion = Image.open('./functions/images/woodland_mansion.png')

background.paste(woodland_mansion, (0,-1), mask=woodland_mansion)

background.save("overlay.png")
background.save("./functions/images/overlay.png")