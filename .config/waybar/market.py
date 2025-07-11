#!/home/archlinux/.dotfiles/.config/waybar/waybarenv/bin/python

import yfinance as yf

def priceStock(emiten):
    data = yf.Ticker(emiten)
    nowPrice = data.history(period="1d")["Close"].iloc[-1]
    prevPrice = data.history(period="2d")["Close"].iloc[-2] 
    if nowPrice > prevPrice:
        price = f"{emiten} = {nowPrice:.0f} UP"
    elif nowPrice < prevPrice:
        price = f"{emiten} = {nowPrice:.0f} DN"
    else:
        price = f"{emiten} = {nowPrice:.0f}"
    return price



print(f"{priceStock("^JKSE")}  {priceStock("PTBA.JK")}")

