
import sys
import os
import json
from zipfile import ZipFile
import zipfile
import requests
import hashlib as hashlib

all_minecraft_versions = []

def version_to_int(version):
    version_numbers = version.split(".")
    digit_count = len(version_numbers)
    number = 0

    #add support for versions like 1.21 intead of 1.21.5
    if(digit_count == 1):
        version_numbers.append(0)
        version_numbers.append(0)
    if(digit_count == 2):
        version_numbers.append(0)

    index = 2
    
    for digit in version_numbers:
        number += int(digit) * pow(100, index) 
        index -= 1

    return number

def interpolate_versions(start, end):
    global all_minecraft_versions

    # Collect a list of all minecraft versions
    if len(all_minecraft_versions) == 0:

        response = requests.get(f"https://piston-meta.mojang.com/mc/game/version_manifest.json")
        if response.status_code == 200 and isinstance(json.loads(response.text)['versions'], list):
            for v in json.loads(response.text)['versions']:
                if v['type'] == 'release':
                    all_minecraft_versions.append(v['id'])
            print(all_minecraft_versions)
        else:
            raise Exception('Failed to collect minecraft versions!')


    output = []
    start_version_int = version_to_int(start)
    end_version_int = version_to_int(end)
    
    for i in all_minecraft_versions:
        if version_to_int(i) >= start_version_int and version_to_int(i) <= end_version_int:
            output.append(i)

    return output

print(interpolate_versions('1.21.5','1.21.11'))