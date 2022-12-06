from PIL import Image

background = Image.open('./functions/images/overlay.png')
end_city = Image.open('./functions/images/end_city.png')

background.paste(end_city, (0,1), mask=end_city)

background.save("overlay.png")
background.save("./functions/images/overlay.png")