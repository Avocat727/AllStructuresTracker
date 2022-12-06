from PIL import Image

background = Image.open('./functions/images/overlay.png')
bastion_remnant = Image.open('./functions/images/bastion_remnant.png')

background.paste(bastion_remnant, (0,1), mask=bastion_remnant)

background.save("overlay.png")
background.save("./functions/images/overlay.png")