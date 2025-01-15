#!/usr/bin/env python3

def apply(config, args):
    config['mapfile'] = f'build/us/mk64.us.map'
    config['myimg'] = f'build/us/mk64.us.z64'
    config['baseimg'] = f'baserom.us.z64'
    config['makeflags'] = [f'VERSION=us']
    config['source_directories'] = ['.']
