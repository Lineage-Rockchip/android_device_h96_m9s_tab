#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

import sys
import subprocess

script_path = '../m9s/extract-files.py'

subprocess.run(['python', script_path] + sys.argv[1:])
