import requests

neo = requests.get('https://neoify.github.io')
print(neo.status_code)
