#!/bin/sh

echo "Running YARA rule..."
yara /yara_rules/shadowpad.yara /files_to_scan/
