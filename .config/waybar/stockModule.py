#!/home/archlinux/.dotfiles/.config/waybar/waybarenv/bin/python

import yfinance as yf

def priceStock(emiten):
    data = yf.Ticker(emiten)
    nowPrice = data.history(period="1d")["Close"].iloc[-1]
    prevPrice = data.history(period="2d")["Close"].iloc[-2] 
    if nowPrice > prevPrice:
        price = f"{nowPrice:.0f} ▲"
    elif nowPrice < prevPrice:
        price = f"{nowPrice:.0f} ▼"
    else:
        price = f"{nowPrice:.0f}"
    return price
