#!/home/archlinux/.dotfiles/.config/waybar/waybarenv/bin/python
from stockModule import*
import json

#Choice Your Stock !
stockChoice1 = "INDF"













price1, color1 = priceStock("^JKSE")
price2, color2 = priceStock(f"{stockChoice1}.JK")

text = f"IHSG = {price1} | {stockChoice1} = {price2}"

if "up" in (color1, color2):
    color = "up"
elif "down" in (color1, color2):
    color = "down"
else:
    color = "same"

print(json.dumps({
    "text":text,
    "class": color}))
