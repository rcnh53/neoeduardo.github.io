import request

url = 'https://neoify.github.io'

neo = requests.get(url)

print(neo.raise_for_status())
