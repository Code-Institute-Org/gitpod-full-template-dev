#!/bin/bash

wooecho "Removing all Python dependencies"
pip3 uninstall -y -r <(pip3 freeze) > /dev/null
echo "Done!"

woo