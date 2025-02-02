#!/bin/bash

npx yarn licenses generate-disclaimer --silent > static/LICENSE.txt
cp LICENSE.md static/

rm static/dev_address.json

npx buidler run scripts/export_abi.js && npx saber build
