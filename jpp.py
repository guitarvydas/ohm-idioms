import json
with open('/tmp/out.json', 'r') as j:
    parsed = json.load(j)
    print(json.dumps(parsed, indent=4))
