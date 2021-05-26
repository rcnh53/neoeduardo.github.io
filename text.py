import requests

url = 'https://neoify.github.io'

neo = requests.get(url)

print(neo.text)
