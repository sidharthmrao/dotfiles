import json
import pathlib
import sys


def read(path: str, key: str | None = None):
    with open(path, 'r') as file:
        data = json.load(file)
        if key is None:
            return data
        return data[key]


def write(path: str, data: dict):
    pre_data = read(path)
    pre_data.update(data)

    with open(path, 'w') as file:
        json.dump(pre_data, file, indent=4)


arguments = sys.argv
local_path = pathlib.Path(__file__).parent.absolute()
path = f'{local_path}/data.json'

try:
    if arguments[1] == 'GET':
        print(read(path, arguments[2]))
    elif arguments[1] == 'SET':
        write(path, {arguments[2]: arguments[3]})
    else:
        print('ERR')
except:
    print('ERR')
