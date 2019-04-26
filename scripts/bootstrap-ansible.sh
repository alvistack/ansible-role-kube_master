#!/bin/bash

# (c) Wong Hoi Sing Edison <hswong3i@pantarei-design.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -o xtrace

cd "$(cd "$(dirname "$0")"; pwd -P)/../"

# Remove conflict packages.
apt-get -y purge python-openssl python-pip && apt-get -y autoremove

# Install Python.
apt-get -y install curl gcc libffi-dev libssl-dev make python python-dev

# Install PIP.
curl -skL https://bootstrap.pypa.io/get-pip.py | python

# Install packages with PIP.
pip install --upgrade --requirement requirements.txt
