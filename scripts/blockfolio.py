#!/usr/bin/python3.6
from pathlib import Path

import requests


with open(Path(__file__).parent / 'BLOCKFOLIO_DEVICE_ID', 'r') as fp:
    BLOCKFOLIO_DEVICE_ID = fp.read().strip()

COLORS = {'up': '#3bb300', 'down': '#b30000'}
BASE_URL = 'https://api-v0.blockfolio.com/rest'
URL = f'{BASE_URL}/get_all_positions/{BLOCKFOLIO_DEVICE_ID}'


res = requests.get(URL)
portfolio = res.json().get('portfolio', {})
portfolioValue = portfolio.get('portfolioValueFiat')  # $1500.00
percentChange = portfolio.get('percentChangeFiat')  # -2.50%
arrow = portfolio.get('arrowFiat')  # up/down

def f(text, color=None):
    if color in COLORS:
        return f'<span color="{COLORS[color]}">{text}</span>'
    return f'<span>{text}</span>'

print(f'{portfolioValue} ({f(percentChange, arrow)})')
