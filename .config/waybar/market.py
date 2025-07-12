#!/home/archlinux/.dotfiles/.config/waybar/waybarenv/bin/python
from stockModule import*

#Choice Your Stock !
stockChoice1 = "PTBA"













IHSG = priceStock("^JKSE")
stock1 = priceStock(f"{stockChoice1}.JK")

print(f"IHSG = {IHSG}  {stockChoice1} = {stock1}")
#print(f"{priceStock("^JKSE")}  {priceStock("PTBA.JK")}")

