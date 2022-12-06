from PIL import Image

background = Image.open('./functions/images/overlay.png')
pillager_outpost = Image.open('./functions/images/pillager_outpost.png')

background.paste(pillager_outpost, (0,1), mask=pillager_outpost)

background.save("overlay.png")
background.save("./functions/images/overlay.png")