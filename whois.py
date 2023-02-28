#!/usr/bin/env python3

import sys
import getopt
import requests

argv = sys.argv[1:]

# opts, args = getopt.getopt(argv, 'v:h:')
opts, args = getopt.getopt(argv, 'vh')

# print(f'Options Tuple is {opts}')
# print(f'Additional Command-line arguments list is {args}')

def print_req_ip(ip,verbose=False):
    r = requests.get(f"http://ip-api.com/json/{ip}")
    #
    # https://stackoverflow.com/questions/26000336/execute-curl-command-within-a-python-script
    #  You then have the raw res.text, or res.json() output, the res.headers, etc.
    # http://requests.readthedocs.org/en/latest/
    #
    for field in [
            'query',
            'country', 
            'regionName',
            'city',
            'zip',
            'lat',
            'lon',
            'timezone',
            'isp',
            'org',
            'as',
            ]:
        if field in r.json():
            print(field+': '+str(r.json()[field]))
    if verbose:
        print('-------------------------------')
        # print(r.json())
        print(r.text)

for ip in args:
    print_req_ip(ip,('-v', '') in opts)
    print('-------------------------------')
